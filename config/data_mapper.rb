require './lib/message'

DataMapper.setup(:default, "postgres://localhost/message_app_development")

DataMapper.finalize

DataMapper.auto_migrate!
