require 'sinatra/base'
require 'sinatra/config_file'
require './lib/message'
require './config/data_mapper'

require "bundler"
Bundler.require(:default)

class MessageApp < Sinatra::Base
  register Sinatra::ConfigFile
  config_file './config/config.yml'
  set :sessions, true

  get '/' do
    @messages = Message.all
    erb(:index)
  end

  post '/message' do
    Message.create(content: params[:content])
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
