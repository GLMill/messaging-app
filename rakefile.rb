require './lib/message'
task default: %w[setup]

task :setup do 
    p 'setting up database'
    DataMapper.setup(:default, "postgres://localhost/message_app_development")
end

task :finalize do 
    p 'finalizing database'
    DataMapper.finalize
end

task :automigrate do 
    p 'migrating database'
    DataMapper.auto_migrate!
end

task :clean do 
    rm '*.txt'
end