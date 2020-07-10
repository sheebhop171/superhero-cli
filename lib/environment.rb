require_relative "./superhero_cli/version"
require_relative "./superhero_cli/cli"
require_relative "./superhero_cli/api"

require 'pry'
require 'httparty'



module SuperheroCLI
  class Error < StandardError; end
  # Your code goes here...
end
