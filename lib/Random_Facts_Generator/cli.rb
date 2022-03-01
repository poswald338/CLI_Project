class CLI
  def run
    system('clear')
    puts "Welcome to the Random Facts Generator!"
    login
    selection
  end

  def selection 
    puts "Press any button for a random fact or exit to end the program."
    user_input = gets.chomp.downcase
    if user_input != "exit"

    end
    25.times{print '-'}
    puts
  end

  def login
    loggedIn = false

    while loggedIn == false do
      puts "Please log in to continue:"
      puts "Enter your username:"
      un = gets.chomp
      puts "Enter your password:"
      pw = gets.chomp
      secure_users = Authenticate.create_secure_users(User.all)
      user = Authenticate.auth_user(un, pw, secure_users)
      if user
        system('clear')
        puts "Logged in Successfully!"
        loggedIn = true
      end
    end
  end
end