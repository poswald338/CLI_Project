class User
  attr_accessor :username, :password
  # pre define a user within the all variable
  @@all = []

  def initialize(username, password)
    @username = username
    @password = password
    @@all << self
  end
  # a method for accessing all user instances
  def self.all
    @@all # returns array of users
  end

end