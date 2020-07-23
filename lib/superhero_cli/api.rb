class SuperheroCLI::API

  def self.get_superhero(input)
    url = "https://superheroapi.com/api/10218887433359734/search/#{input}"
    response = HTTParty.get(url)
    superhero_data = response["results"]

    SuperheroCLI::Superhero.create_superhero(input, superhero_data)

  end

end
