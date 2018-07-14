require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinized' do
    #create a class instance of Model and pass user input to it
    @pig_latin = PigLatinizer.new(params[:user_input])
    #route to erb page that utilizes class instance and methods
    erb :pig_latinized
  end

end
