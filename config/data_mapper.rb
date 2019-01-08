require './lib/message'
require './lib/tag'

DataMapper.setup(:default, "postgres://localhost/message_app_#{ENV['RACK_ENV']}")
DataMapper.finalize


