
class SuperheroCLI::CLI

  attr_accessor :input, :name, :powerstats, :full_name, :alter_egos, :place_of_birth, :occupation, :superhero

  def start
    intro
    list_superheroes
    choose_superhero
    menu
  end

  def intro
    puts ""
    puts "--------------------------------------"
    puts "Welcome to the ultimate Superhero App!".colorize(:blue)
    puts "--------------------------------------"
    puts ""
    puts "You've been recruited for a secret mission to take down an evil villian.".colorize(:yellow)
    puts "You're allowed to choose one superhero from the group to join you in your quest.".colorize(:yellow)
    puts "We've rounded up a list of Superheroes for you to choose from...Choose wisely.".colorize(:yellow)
  end

  def list_superheroes
    puts ""
    puts "Below is your list of viable candidates:".colorize(:yellow)
    puts ""
    superheroes = ["Aquaman", "Batgirl", "Batman", "Deadpool", "Firestorm", "Hulk", "Maverick", "Mystique", "Phoenix", "Spider-Man"]
    superheroes.each.with_index(1) do |name, index|
      puts "#{index}. #{name}"
    end
  end

  def choose_superhero
    puts ""
    puts "Enter the name of the superhero you'd like to learn more about:".colorize(:yellow)
    puts ""
    input = gets.strip
    SuperheroCLI::API.get_superhero(input)
    display_superhero_data(input)
  end

  def display_superhero_data(input)
    input = SuperheroCLI::Superhero.all.find {|superhero| superhero.input == input}
    puts ""
    puts "------------------".colorize(:blue)
    puts "Superhero Profile".colorize(:blue)
    puts "------------------".colorize(:blue)
    puts ""
    puts "Name: #{input.name}"
    puts "Full Name: #{input.full_name}"
    puts "Alter Egos: #{input.alter_egos}"
    puts "Place of Birth: #{input.place_of_birth}"
    puts "Occupation: #{input.occupation}"
    puts "Powerstats: "
    input.powerstats.each do |key, value|
       puts " - #{key}: #{value}"
    end
    puts ""
  end

  def menu
    puts "Would you like to see another superhero?".colorize(:yellow)
    puts "Type 'yes' to see the list of superheroes or 'no' to exit.".colorize(:yellow)
    input = ""
    while input
      input = gets.strip.downcase
      case input
      when "yes"
        list_superheroes
        choose_superhero
        menu
      when "no"
        exit
        break
      else
        puts "I don't understand that. You can enter 'yes' or 'no'.".colorize(:red)
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
