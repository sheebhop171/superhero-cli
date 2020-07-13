class SuperheroCLI::API
  
  attr_accessor :input

  def initialize(input)
    @input = input
   # @key = key #input API key here
  end

  def get_superheroes
     binding.pry
    url = "https://superheroapi.com/api/10218887433359734/search/#{input}"
    response = HTTParty.get(url)
    response_data = JSON.parse response


end

end

#response.map {|x| x.values[0]}
