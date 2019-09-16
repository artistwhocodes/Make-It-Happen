class TasksController < ApplicationController


  get '/tasks' do
    authenticate
    @houses = House.all
    @tasks = Task.where(user: current_user).where(completed: false)
    erb :"tasks/index"
  end

  get '/tasks/new' do
    authenticate
    erb :"tasks/new"
  end


  get '/tasks/search' do
    @tasks = Task.where("content LIKE ?", "%#{params[:content]}%").where(user: current_user)

    erb :"/tasks/index"
  end




  get '/tasks/:id' do  #55:44
    authenticate
    @task = Task.find_by(id: params[:id])
    erb :"tasks/show"
  end




  post '/tasks' do  # behind the scene it build it then resend it to task part.
    #add build and do error messae for current user.
    authenticate
    # Task.create(content: params[:content])

    u = current_user
    @task = u.tasks.build(content: params[:content])
    @task.house = current_user.house

      if @task.save
        redirect '/tasks'
      else
        # @message = "Sorry couldn't submit your form! Please, try again."
        erb :'tasks/new'
      end
  end

  get '/tasks/:id/edit' do
    @task = Task.find_by(id: params[:id])
    authenticate_user(@task)
    erb :"tasks/edit"
  end

  patch '/tasks/:id' do
    @task = Task.find_by(id: params[:id])
    authenticate_user(@task)
    @task.update(content: params[:content], completed: !!params[:completed]) # 2nd vid 11:21
    redirect "/tasks/#{@task.id}"
  end

  delete '/tasks/:id' do
    task = Task.find_by(id: params[:id])
    authenticate_user(task)
    if task
      task.destroy
      redirect '/tasks'
    end
  end

end
