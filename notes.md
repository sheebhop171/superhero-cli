What will your app do? 
 -Provide users with quick information on which superhero they want to accompany on them on a secret mission
 
What is the user experience? 
-User has been enlisted on a secret mission and is in need of a superhero counterpart. In order to find the best partner, the user can search the app to find out information about each superhero. 

Where will you get your data from?
  -Superhero API

What will you need to do with the data once you’ve got it?

What classes will you be using? 

  #start
    CLI
  #print_superheroes 
    API to pull data 
  #choose_superhero 
    Display data for user input 
    
How will you display data one level deep to the user? 
User will see list of available superheroes 
User will enter which super hero they want to see stats about 

Def start
Puts “Welcome to the superhero app!”
Ask_superhero
End 
Puts “Enter the name of a superhero you’d like to see stats of” 
Input = gets.strip

User is asked for a superhero 
User enters superhero name
User is returned API information for that superhero 



