class Scraper

  def initialize(hero)
    @hero = hero
    @key = key #input API key here
  end

  def fetch_data
    url = https://superheroapi.com/api/10218887433359734/#{id}

    response = HTTParty.get(url)


  end

  def goodbye
    puts "Thanks for checking out our superheroes!"
  end

end