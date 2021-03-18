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

  def print_details
    puts self.name
    puts "Nickname: #{self.nickname}"
    puts "Birthday: #{self.birthday}"
    puts "Occupation: #{self.occupation.join(", ")}"
    puts "Status: #{self.status}"
    puts "Played By: #{self.actor}"
  end

  def add_message(content)
    Message.new(content, self)
  end

end
