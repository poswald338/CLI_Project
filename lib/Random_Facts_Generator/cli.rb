class CLI
  def run
    puts "Welcome to the Random Facts Generator!"
    login
  end

  def login
    puts "Please log in to continue:"
    puts "Enter your username:"
    un = gets.chomp
    puts "Enter your password:"
    pw = gets.chomp
    # use authenticate module to hash password and log in user
  end
end