require 'bcrypt'
class CLI
  def run
    system('clear')
    puts "Welcome to the Random Facts Generator!"
    generate_users
    login
    selection
  end

  def generate_users
    User.new("patrick1", "password1")
    
  end

  def selection 
    exiting = false
    while !exiting do
      puts "Press any button for a random fact or exit to end the program."
      user_input = gets.chomp.downcase
      if user_input != "exit"
        puts "...Generating Fact..."
        50.times{print '-'}
        puts "\n"
        Scraper.get_fact
        50.times{print '-'}
        2.times{puts}
      else 
        exiting = true
        puts "Thanks for using the Random Fact Generator!"
      end
    end
  end

  def login
    loggedIn = false

    puts "Enter 1 to log in or 2 to sign up."
    input = gets.chomp

    if input === "2"
      signup
    else
      while loggedIn === false do
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

  def signup
    puts "hello signup!"
  end
end