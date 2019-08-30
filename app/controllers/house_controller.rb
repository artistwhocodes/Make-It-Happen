class HouseController < ApplicationController


  get '/house' do
    authenticate
    @houses = House.all
    @tasks = Task.all

    erb :"house/index"
  end



end
