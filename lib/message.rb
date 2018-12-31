<<<<<<< HEAD
require 'data_mapper'

class Message
  include DataMapper::Resource

  property :id, Serial
  property :content, Text
  property :created_at, DateTime
=======
class Message

  attr_reader :content, :id

  def initialize(content, id)
    @content = content
    @id = Time.now
  end
>>>>>>> better_tests/master
end
