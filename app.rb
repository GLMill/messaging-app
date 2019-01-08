require 'sinatra/base'
require 'sinatra/config_file'

require './config/data_mapper'

#

require './lib/tagging'
require './lib/message'
require './lib/tag'


require "bundler"
Bundler.require(:default)

class MessageApp < Sinatra::Base

  ## what is this doing??
  register Sinatra::ConfigFile
  config_file './config/config.yml'

  p settings.name

  set :sessions, true ## enable sessions
  

  get '/' do
    @messages = Message.all
    @tags = Tag.all
    erb(:index)
  end

  post '/message' do
    Message.create(content: params[:content])
    Tag.create(content: params[:tag])
    redirect '/'
  end

  get '/messages/:id' do
    @message = Message.get(params[:id])
    session[:message_to_update] = params[:id]
    erb(:show)
  end

  post '/update_message' do 
    @message = Message.get(session[:message_to_update])
    if @message.update(:content => params[:update])
      redirect '/'
    else 
      'The rescource could not be saved'
    end
  end

  get '/delete' do
    @message = Message.get(session[:message_to_update])
    if @message.destroy
      redirect '/'
    else 
      'The rescource could not deleted'
    end 
  end


end
