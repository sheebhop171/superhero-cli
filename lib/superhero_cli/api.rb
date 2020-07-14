class SuperheroCLI::API
  
  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def get_superheroes
    url = "https://superheroapi.com/api/10218887433359734/search/#{input}"
    response = HTTParty.get(url)
    superhero = response["results"]
    superhero_name = superhero[0]["name"]
  end

end
