class SuperheroCLI::CLI
  
  attr_accessor :input

  def start
    puts "Welcome to the ultimate Superhero App!"
    while @input != "exit"
   # binding.pry
    ask_for_superhero
    api = SuperheroCLI::API.new(input)
    api.get_superheroes
    end 
    goodbye
  end

  def ask_for_superhero
    puts "Enter the name of a superhero you'd like to learn more about."
    get_user_input
    #hero = valid_input(input)
  end
  
  def get_user_input
    @input = gets.strip
  end
  
  def goodbye
   puts "Thank you for visiting the Superhero App!"
  end
  
end