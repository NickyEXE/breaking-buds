class User

  @@all = []

  attr_accessor :username

  def self.all
    @@all
  end

  def self.find_or_create_by_username(username)
    self.find_by_username(username) || self.create_by_username(username)
  end

  def self.find_by_username(username)
    self.all.find{|user| user.username == username}
  end

  def self.create_by_username(username)
    user = new
    user.username = username
    all << user
    return user
  end

end
