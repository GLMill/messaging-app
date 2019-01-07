require 'data_mapper'
require './lib/message'
task default: %w[setup]

task :setup do 
    DataMapper.setup(:default, "postgres://localhost/message_app_#{ENV['RACK_ENV']}")
    DataMapper.finalize
    puts 'setting up database'
end

task :auto_migrate => :setup do 
    DataMapper.auto_migrate!
    puts 'migrating database'
end

task :auto_upgrade => :setup do 
    DataMapper.auto_upgrade!
    puts 'migrating database'
end

task :clean do 
    rm '*.txt'
end