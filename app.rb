require 'sinatra/base'

class Messaging < Sinatra::Base
  enable :sessions

  get ('/') do
    erb :index
  end

  post ('/board') do
    session[:name] = params[:name]
  end

end
