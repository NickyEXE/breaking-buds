class Message

  @@all = []

  attr_reader :content, :character

  def initialize(content, character)
    @content, @character = content, character
    @@all << self
  end

  def self.all
    @@all
  end

end
