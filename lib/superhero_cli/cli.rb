class SuperheroCLI::CLI
  
  attr_accessor :input

  def start
    puts "Welcome to the ultimate Superhero App!"
    while @input != "exit"
    
    superheroes_list 
    get_user_input
    api = SuperheroCLI::API.new(input)
    
    #list superhero information 
    
    end 
    goodbye
  end
  
   def superheroes_list
    puts "Enter the name of the superhero you'd like to learn more about."
    @superheroes = ["Aquaman", "Deadpool", "Hulk", "Phoenix", "Storm"]
    @superheroes.each.with_index(1) do |name, index|
      puts "#{index}. #{name}"
    end
  end 

  def get_user_input
   @input = gets.strip 
  end
  
  def goodbye
   puts "Thank you for visiting the Superhero App!"
  end
  
end