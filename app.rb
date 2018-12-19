require 'sinatra/base'
require './lib/message'

class Messaging < Sinatra::Base

  enable :sessions

  before do
    session[:messages] ||=[]
    @messages = session[:messages]
  end

  get ('/') do
    erb(:index)
  end

  post ('/messages') do
    message = Message.new(params[:content], params[:id])
    session[:messages] << message
    redirect('/')
  end

 end
