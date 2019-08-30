require './config/env'
# purpose of config.ru is to detail to Rack the
# environment requirements of the application and start the application.

# requires a valid Sinatra Controller to run

# Mounting a controller means telling Rack that part
# of your web application is defined within the following class.
# We do this in config.ru by using run Application where run is
# the mounting method and Application is the controller class that
# inherits from Sinatra::Base and is defined in a previously required file.


use Rack::MethodOverride
use SessionsController
use TasksController
use HouseController
#SInatra tells what run is
run ApplicationController
