require_relative "Random_Facts_Generator/version.rb"

module RandomFactsGenerator
  class Error < StandardError; end
  # Your code goes here...
end

require_relative "Random_Facts_Generator/cli.rb"
require_relative "authenticator.rb"
require_relative "user.rb"
