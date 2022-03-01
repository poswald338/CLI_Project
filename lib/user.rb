class User
  attr_accessor :username, :password
  # pre define a user within the all variable
  @@all = [
    {username: "patrick1", password: "password1"}
  ]

  def initialize
    @@all << self
  end
  # a method for accessing all user instances
  def self.all
    @@all # returns array of users
  end

end