require_relative '../config/environment.rb'


class App < Sinatra::Base	class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text = params[:user_phrase]
    @piglatinizer = PigLatinizer.new
    erb :piglatinize
  end
end 