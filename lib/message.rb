require 'data_mapper'

class Message
  include DataMapper::Resource

  property :id, Serial
  property :content, Text
  property :created_at, DateTime
  property :updated_at, DateTime
end
