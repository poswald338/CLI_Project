require 'bcrypt'
module Authenticate
  def self.create_secure_users(list_of_users)
    list_of_users.each do |user|
      user.password = BCrypt::Password.create(user.password)
    end
    list_of_users
  end

  def self.auth_user(username, password, users)
    current_user = nil
    users.each do |user|
      if user.username == username && user.password == password
        current_user = user
        break
      end
    end
    return current_user
  end
end