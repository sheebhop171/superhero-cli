class SuperheroCLI::Superhero
  
  
  attr_accessor :input, :name, :powerstats, :full_name, :alter_egos, :place_of_birth, :occupation
  
  @@all = []

  def initialize(input)
    @input = input
    @name = name
    @powerstats = powerstats
    @full_name = full_name
    @alter_egos = alter_egos
    @place_of_birth = place_of_birth
    @occupation = occupation
    @@all << self
  end
  
  def self.all
    @@all 
  end 
  
end