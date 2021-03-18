class Message

  attr_reader :character, :user
  attr_accessor :message

  @@all = []

  def initialize(message, character, user)
    @message, @character, @user = message, character, user
    @@all << self
  end

  def self.all
    @@all
  end

  def username
    user.username
  end

end
