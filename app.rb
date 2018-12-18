require 'sinatra/base'

class Messaging < Sinatra::Base
  enable :sessions

  get ('/') do
    erb :index
  end

  post ('/message') do
    session[:message] = params[:message]
    redirect('/board')
  end

  get ('/board') do
    @message = session[:message]
    erb :index
  end


end
