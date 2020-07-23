class SuperheroCLI::Superhero

  attr_accessor :input, :name, :powerstats, :full_name, :alter_egos, :place_of_birth, :occupation, :superhero

  @@all = []

  def initialize(input, superhero_data)
    superhero_data.each {|key, value| self.send(("#{key}="), value)}
    save
  end

  def self.create_superhero(input, superhero_data)
    input = input
    name = superhero_data[0]["name"]
    powerstats = superhero_data[0]["powerstats"]
    full_name = superhero_data[0]["biography"]["full-name"]
    alter_egos = superhero_data[0]["biography"]["alter-egos"]
    place_of_birth = superhero_data[0]["biography"]["place-of-birth"]
    occupation = superhero_data[0]["work"]["occupation"]
    
    superhero_data = {
      :input => input,
      :name => name,
      :powerstats => powerstats,
      :full_name => full_name,
      :alter_egos => alter_egos,
      :place_of_birth => place_of_birth,
      :occupation => occupation
    }

    SuperheroCLI::Superhero.new(input, superhero_data)
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
