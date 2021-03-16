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

end
