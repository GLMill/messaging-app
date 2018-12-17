require 'sinatra/base'

class Messaging < Sinatra::Base
  enable :sessions

  get ('/') do
    erb :index
  end

  post ('/name') do
    session[:name] = params[:name]
    redirect '/board'
  end

  get ('/board') do
    @name = session[:name]
    erb(:board)
  end

  get ('/new') do
    "Create a new message:"
  end

  get ('/view') do
    "History:"
  end
end
