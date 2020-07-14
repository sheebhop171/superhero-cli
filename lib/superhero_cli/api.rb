class SuperheroCLI::API
  
  attr_accessor :input, :name, :powerstats, :full_name, :alter_egos, :place_of_birth, :occupation

  def initialize(input)
    @input = input
  end

  def get_superheroes
    
    url = "https://superheroapi.com/api/10218887433359734/search/#{input}"
    response = HTTParty.get(url)
    superhero = response["results"]
    
    @name = superhero[0]["name"]
    @powerstats = superhero[0]["powerstats"]
    @full_name = superhero[0]["biography"]["full-name"]
    @alter_egos = superhero[0]["biography"]["alter-egos"]
    @place_of_birth = superhero[0]["biography"]["place-of-birth"]
    @occupation = superhero[0]["work"]["occupation"]
    
  end 
    
    def list_attributes 
    puts "Name: #{@name}"
    puts "Full Name: #{@full_name}"
    puts "Alter Egos: #{@alter_egos}"
    puts "Place of Birth: #{@place_of_birth}"
    puts "Occupation: #{@occupation}"
    @powerstats.each do |stat| 
    puts "#{stat}" 
      end
    puts 
  end

end
  