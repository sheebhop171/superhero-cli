require_relative "./superhero_cli/version"
require_relative "./superhero_cli/cli"
require_relative "./superhero_cli/api"
require_relative "./superhero_cli/superhero"

require 'pry'
require 'httparty'
require 'json'



module SuperheroCLI
  class Error < StandardError; end
end
