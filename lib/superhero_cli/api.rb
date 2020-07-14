class SuperheroCLI::API
  
  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def get_superheroes
    url = "https://superheroapi.com/api/10218887433359734/search/#{input}"
    response = HTTParty.get(url)
    binding.pry
    superhero = response["results"]
    @name = superhero[0]["name"]
    @powerstats = superhero[0]["powerstats"].each do |stat| 
    puts "#{stat}" 
      end
    @full_name = superhero[0]["biography"]["full-name"]
    @alter_egos = superhero[0]["biography"]["alter-egos"]
    @place_of_birth = superhero[0]["biography"]["place-of-birth"]
    @occupation = superhero[0]["work"]["occupation"]
    puts 
  end

end
  