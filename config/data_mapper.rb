require './lib/message'

DataMapper.setup(:default, "postgres://localhost/#{settings.database}")

DataMapper.finalize

DataMapper.auto_migrate!
