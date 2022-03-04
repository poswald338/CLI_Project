class Scraper
  require 'nokogiri'
  require 'open-uri'
  URL = "https://facts.net/random-facts/"

  def self.get_fact
    # gereates a random number which I use to select a random fact from website
    num = rand(2..300)
    doc = Nokogiri::HTML(URI.open(URL))
    fact = doc.css("#title-" + num.to_s)
    puts fact.text
    puts "\nWant to learn more?(Y/N)"
    user_input2 = gets.chomp.downcase
    if user_input2 == 'n'
      return
    else
      more_info = doc.css("#title-" + num.to_s + " p span")
      puts "hello"
    end
  end
end
