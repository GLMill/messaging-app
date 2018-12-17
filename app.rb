require 'sinatra/base'

class Messaging < Sinatra::Base
  enable :sessions

  get ('/') do
    erb :index
  end



end
