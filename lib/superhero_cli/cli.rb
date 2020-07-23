
class SuperheroCLI::CLI

  attr_accessor :input, :name, :powerstats, :full_name, :alter_egos, :place_of_birth, :occupation, :superhero

  def start
    intro
    list_superheroes
    choose_superhero

  end

  def intro
    puts ""
    puts "--------------------------------------"
    puts "Welcome to the ultimate Superhero App!".colorize(:yellow)
    puts "--------------------------------------"
    puts ""
    puts "You've been recruited for a secret mission to take down an evil villian.".colorize(:yellow)
    puts "You're allowed to choose one superhero from the group to join you in your quest.".colorize(:yellow)
    puts "We've rounded up a list of Superheroes for you to choose from...Choose wisely.".colorize(:yellow)
  end

  def list_superheroes
    puts ""
    puts "Below is your list of viable candidates:"
    puts ""
    superheroes = ["Aquaman", "Batgirl", "Batman", "Deadpool", "Firestorm", "Hulk", "Maverick", "Mystique", "Phoenix", "Spider-Man"]
    superheroes.each.with_index(1) do |name, index|
      puts "#{index}. #{name}"
    end
  end

  def choose_superhero
    puts ""
    puts "Enter the name of the superhero you'd like to learn more about."
    puts "---------------------------------------------------------------"
    input = gets.strip
    SuperheroCLI::API.get_superhero(input)
    display_superhero_data(input)
  end

  def display_superhero_data(input)
    input = SuperheroCLI::Superhero.all.find {|superhero| superhero.input == input}
    puts "-----------Superhero Info-----------"
    puts "Name: #{input.name}"
    puts "Full Name: #{input.full_name}"
    puts "Alter Egos: #{input.alter_egos}"
    puts "Place of Birth: #{input.place_of_birth}"
    puts "Occupation: #{input.occupation}"
    #puts "Powerstats: "
   # @powerstats.each do |key, value|
     #   puts " - #{key}: #{value}"
   # end
  end

  def menu
    input = ""
    while input
      input = gets.strip.downcase
      case input
      when "yes"
        list_superheroes
      when "no"
        exit
        break
      else
        puts "I don't understand that. You can enter 'yes' or 'no'."
      end
    end
  end

  def exit
    puts ""
    puts "---------------------------------------------".colorize(:yellow)
    puts "Good luck on your mission. See you next time!".colorize(:yellow)
    puts "---------------------------------------------".colorize(:yellow)
    puts ""
  end
end
