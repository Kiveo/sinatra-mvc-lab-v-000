require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinized' do
    #create a class instance of Model and pass user input to it
    @pig_input = PigLatinizer.new(params[:user_input])
    erb :piglatinized
  end

end
