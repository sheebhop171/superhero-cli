class SuperheroCLI::CLI
  
  attr_accessor :input

  def start
    puts "Welcome to the ultimate Superhero App!"
    while @input != "exit"
    superheroes_list 
    api = SuperheroCLI::API.new(input)
    api.get_superheroes 
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
    @input = gets.strip 
  end 

  #def get_user_input
   
  #end
  
  def goodbye
   puts "Thank you for visiting the Superhero App!"
  end
  
end