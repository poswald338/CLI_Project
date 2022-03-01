require 'bcrypt'
module Authenticate
  def self.create_secure_users(list_of_users)
    list_of_users.each do |user|
      user[:password] = BCrypt::Password.create(user[:password])
    end
    list_of_users
  end

  def self.auth_user(username, password, users)
    current_user = nil
    users.each do |user|
      if username == user[:username] && password == user[:password]
        current_user = user
        return current_user
        break
      else
      end
    end
  end
end