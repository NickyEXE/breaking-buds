class User

  attr_accessor :username

  @@all = []

  def self.all
    @@all
  end

  def self.create_by_username(username)
    user = User.new
    user.username = username
    user.save
  end

  def save
    self.class.all.push(self)
    self
  end

  def self.find_by_username(username)
    self.all.find{|user| user.username == username}
  end

  def self.find_or_create_by_username(username)
    self.find_by_username(username) || self.create_by_username(username)
  end

end
