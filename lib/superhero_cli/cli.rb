class SuperheroCLI::CLI
  
  attr_accessor :input

  def start
    puts "Welcome to the ultimate Superhero App!"
    while @input != "exit"
    # list superheros to choose from 
    superheroes_list 
    ask_for_superhero
    api = SuperheroCLI::API.new(input)
    api.get_superheroes
    #list superhero information 
    end 
    goodbye
  end
  
   def superheroes_list
    # pick random assortment of superheros to display 
    @superheroes = ["Batman", "Spider-Man", "Joker", "Wonder Woman"]
    binding.pry 
    @superheroes.each_with_index do |index, name|
      puts "#{index}: #{name}"
    end
  end 

  def ask_for_superhero
    puts "Enter the name of a superhero you'd like to learn more about."
    @input = gets.strip 
  end
  
  
  def goodbye
   puts "Thank you for visiting the Superhero App!"
  end
  
end
