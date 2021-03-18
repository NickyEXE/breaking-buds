class Character

  attr_reader :name, :birthday, :img, :occupation, :status, :actor, :nickname

  @@all = []

  def initialize(hash)
    @name = hash["name"]
    @birthday = hash["birthday"]
    @img = hash["img"]
    @occupation = hash["occupation"]
    @status = hash["status"]
    @actor = hash["portrayed"]
    @nickname = hash["nickname"]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    # iterate through the character array (@@all)
    # check to see if the name == the character we're looking at's name
    self.all.find{|character| character.name == name}
  end

  def write_message(message)
    Message.new(message, self)
  end

  def messages
    Message.all.select{|message| message.character == self}
  end

  def print_details
    puts self.name
    puts "Nickname: #{self.nickname}"
    puts "Birthday: #{self.birthday}"
    puts "Occupation: #{self.occupation.join(", ")}"
    puts "Status: #{self.status}"
    puts "Played By: #{self.actor}"
  end

  def print_messages
    if messages.any?
      messages.each_with_index do |message, i|
        puts "#{i+1}. #{message.message}"
      end
    else
      puts "No one has written #{name} a message yet! Be the first!"
    end
  end

end
