require 'sinatra/base'
require './lib/message'

class Messaging < Sinatra::Base

  enable :sessions

  get ('/') do
    session[:messages] ||=[]
    @messages = session[:messages]
    erb(:index)
  end

  post ('/messages') do
    message = Message.new(params[:content])
    session[:messages] << message
    redirect('/')
  end
end
