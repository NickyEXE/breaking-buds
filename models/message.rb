class Message

  attr_reader :character
  attr_accessor :message

  @@all = []

  def initialize(message, character)
    @message, @character = message, character
    @@all << self
  end

  def self.all
    @@all
  end

end
