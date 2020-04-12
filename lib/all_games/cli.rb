class AllGames::CLI

  def call
    puts "Hello and welcome to ALL-Games!"
    menu
    user_input
    goodbye
  end

  def scrape
    AllGames::Scraper.scrape_year
  end

  def menu
    puts "please select one of the options provided:"
    puts <<-MENU
    0 - list all games coming out this year.

    To return to this menu type 'menu'
    To exit this program simply type 'exit'
    MENU
  end

  def user_input
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
        when "0"
          year
        when "1"
          month
        when "2"
          specific_game
        when "menu"
          menu
        end
      end
    end

  def year
    scrape

    puts "if you'd like to see a description of the game enter the number associated with it."
    games = AllGames::Games.all
    games.each.with_index(1) do |game, i|
      puts <<-YEAR

      #{i}. #{game.name} - (#{game.platform}) - (#{game.release})
      YEAR
    end
    puts ""
    puts "if you'd like to see a description of the game enter the number associated with it."
    puts "Games that contain a () are TBA"
  end

  def goodbye
    puts "bye! check back to see if any dates have changed!"
  end

end
