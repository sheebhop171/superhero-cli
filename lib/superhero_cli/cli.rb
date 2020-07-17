class SuperheroCLI::CLI
  
  attr_accessor :input

  def start
    puts "Welcome to the ultimate Superhero App!"
    if @input != "exit"
      superheroes_list 
      SuperheroCLI::Superhero.new(input)
      binding.pry
      SuperheroCLI::API.get_superhero_info 
      list_attributes
      
    puts "Would you like to see another superhero? (y/n)"
      input = gets.strip.downcase
      if input == "y"
        start
      elsif input == "n"
        puts "Thanks for visiting the Superhero App!"
        exit
      else
        puts "I don't understand that answer. Please enter 'y', 'n', or 'exit'."
        input = gets.strip.downcase
        start
      end
    end 
  end
  
   def superheroes_list
    puts "Enter the name of the superhero you'd like to learn more about or enter 'exit'."
    @superheroes = ["Aquaman", "Batgirl", "Batman", "Deadpool", "Hulk", "Mystique", "Phoenix", "Spider-Man", "Storm", "Thor", ]
    @superheroes.each.with_index(1) do |name, index|
      puts "#{index}. #{name}"
    end
    @input = gets.strip 
  end
  
  
end