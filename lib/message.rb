class Message

  attr_reader :content, :time

  def initialize(content)
    @content = content
    @time = Time.now
  end

  def preview
    @content[0,20]
  end
end
