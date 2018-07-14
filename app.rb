require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinized' do
    @pig_input = params[:user_input]
    #create a class instance of Model and pass user input to it
    @pig_output = Pig
    erb :piglatinized
  end

end
