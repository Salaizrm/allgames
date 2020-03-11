class AllGames::Games

  def self.year
    puts "2020 GAMES"
    year_list = self.new
    year_list.month = "JANUARY"
    year_list.games = "blah blah(pc)(JANUARY 1)"

    year_list
  end

  def self.month
    puts " "
  end


end
