require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    foo = PigLatinizer.new(params[:user_phrase])
    print foo
    erb :results
  end

end
