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
    message = Message.new(params[:content])
    session[:messages] << message
    redirect('/')
  end

  get ('/selected-message') do
     @messages.each do|obj|
       if obj.time == params['id']
          @single_message == object
          return
        end
      end
  end
end
