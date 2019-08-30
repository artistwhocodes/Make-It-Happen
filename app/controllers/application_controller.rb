class ApplicationController < Sinatra::Base
  configure do
    set :erb, layout: :'layout'
    set :show_exceptions, :after_handler
    set :views, 'app/views'
    set :public_folder, 'public'
    enable :sessions
    set :session_secret, SESSION_SECRET
    # The session secret is a key used for
    # signing and/or encrypting cookies set
    # by the application to maintain session state.
  end

  not_found do
    erb :'oops' #do 404 PAGE
  end
  # CHANGE THIS BELOW . I DONT LIKE
  # error { @error = request.env['sinatra_error'] ; haml :'500' }

  get '/'  do
    erb :index
  end

  get '/profile/:username' do
    authenticate #only users access
    @tasks = Task.where(user: current_user).where(completed: true)
    erb :profile
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find_by(id: session[:user_id])
    end

    def authenticate
      if !logged_in?
        redirect '/'
      end
    end

    def authenticate_user(task)
      authenticate
      redirect '/profile' if !task  #nil
      redirect '/profile' if current_user != task.user
    end

    def redirect_to_profile_page
     redirect to "/profile/#{current_user.username}"
    end

    def house_points
      counts = 0
      @tasks.each do |task|
        if task.completed == true && task.house.house_name == current_user.house.house_name
          @house_points = counts += 1
        end
      end
        if @house_points == nil
          @house_points = nil.to_i
        else
          @house_points *= 10
        end
    end

    def user_points
      counts = 0
      @tasks.each do |task|
        if task.completed == true  && current_user == task.user
             @user_points = counts += 1
         end
       end
       if @user_points == nil
         @user_points = nil.to_i
       else
         @user_points *= 10
       end
    end

    def required_task
      counts = 0
      @tasks.each do |task|
        if task.completed == false  && current_user == task.user
             @required_num = counts += 1
         end
       end
       if @required_num == nil
         @required_num = nil.to_i
       else
         @required_num
       end
    end

    def completed_task
      counts = 0
      @tasks.each do |task|
        if task.completed == true  && current_user == task.user
             @completed_num = counts += 1
         end
       end
       if @completed_num == nil
         @completed_num = nil.to_i
       else
         @completed_num
       end
    end


  end

end
