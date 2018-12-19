class Message

  attr_reader :content, :id

  def initialize(content, id)
    @content = content
    @id = Time.now
  end
end
