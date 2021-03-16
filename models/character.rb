class Character

  @@all = []

  attr_reader :name, :img, :birthday, :nickname, :status, :portrayed

  def initialize(hash)
    @name = hash["name"]
    @img = hash["img"]
    @birthday = hash["birthday"]
    @nickname = hash["nickname"]
    @status = hash["status"]
    @portrayed = hash["portrayed"]
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{|char| char.name == name}
  end
end