class Message

  @@all = []

  attr_reader :content, :character, :user

  def initialize(content, character, user)
    @content, @character, @user = content, character, user
    @@all << self
  end

  def self.all
    @@all
  end

end
