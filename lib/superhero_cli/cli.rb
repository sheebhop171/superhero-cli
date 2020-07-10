class SuperheroCLI::CLI

  def start
    puts "Welcome to the ultimate Superhero App!"
    while @input != "exit"
    ask_for_superhero
    end 
    goodbye
  end

  def ask_for_superhero
    puts "Enter the name of a superhero you'd like to learn more about."
    get_user_input
    #hero = valid_input(input)
  end

# def valid_input(input)
#    if input < 0 || input > 25
#     puts "Please enter a number between 1 and 25."
#    end
#  end

  def get_user_input
    @input = gets.strip
  end
  
  def goodbye
   puts "Thank you for visiting the Superhero App!"
  end
  
end