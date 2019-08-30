class SessionsController < ApplicationController

  get '/index' do
    redirect_to_profile_page if logged_in?
    erb :'index'
  end

  get '/login' do
    redirect_to_profile_page if logged_in?
    @failed = false
    erb :'sessions/login'

  end

  post '/login' do
    user = User.find_by(username: params[:username])
    if !!user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to_profile_page
    else
      @failed = true
      erb :'sessions/login'
    end
  end

  get '/signup' do
    redirect_to_profile_page if logged_in?
    erb :'sessions/signup'
  end

  post '/users' do
    @house = House.create(house_name: params[:house_name])
    @user = User.new(name: params[:name], username: params[:username], password: params[:password] , password_confirmation: params[:password_confirmation])
    @user.house = @house
    @user.save
    if @user.errors.any?
      erb :'sessions/signup'
    else
      session[:user_id] = @user.id #session keeps us login and database will find current user that is login
      redirect_to_profile_page
    end
  end

  delete '/logout' do
    session.clear
    redirect '/index'
  end


end
