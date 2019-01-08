require 'data_mapper'

class Tag
  include DataMapper::Resource

  property :id, Serial
  property :content, Text
  property :created_at, DateTime
  property :updated_at, DateTime

  has n, :taggings
  has n, :messages, :through => :taggings

end
