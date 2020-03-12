class AllGames::Games





  def self.year
    puts "2020 GAMES"
    AllGames::Scraper.new
    year_list = self.new
    year_list = self.month
    year_list = self.game
  end

  def self.month
    january(AllGames::Scraper.scrape_month)
  end

  def self.game
    puts "blah blah blah"
  end


end


#I wonder how I can make the year interchangeable?
