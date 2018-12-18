require 'sinatra/base'
require './lib/messenger'

class Messaging < Sinatra::Base

  enable :sessions

  get ('/') do
    session[:messages] ||=[]
    @messages = session[:messages]
    erb(:index)
  end

  post ('/messages') do
    message = Messenger.new(params[:content])
    session[:messages] << message
    redirect('/')
  end
end
