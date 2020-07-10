class SuperheroCLI::CLI

  def start
    puts "Welcome to the ultimate Superhero App!"
    ask_for_superhero
    goodbye
  end

  def ask_for_superhero
    puts "Enter the name of a superhero you'd like to learn more about."
    input = gets.strip
    hero = valid_input(input)

  end

  def valid_input(input)
    if input < 0 || input > 25
      puts "Please enter a number between 1 and 25."
    end
  end

end