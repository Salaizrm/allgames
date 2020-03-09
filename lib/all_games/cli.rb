class Allgames::CLI
  
  def call
    puts "Hello and welcome to ALL-Games!"
    menu
    user_input
    goodbye
  end
  
  def menu
    puts "please select one of the options provided:"
    puts <<-LIST
    0 - list all games coming out this year.
    1 - list all games coming out for a specific month.
    2 - search for a specific game.
    
    To exit this program simply type 'exit'
    LIST
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
        when "#{specific_month}"
          #returns list of games from that month
      when "2"
        specific_game
        when "#{specific_videogame}"
          #returns specific videogame
      end
    end
  end
  
  def year
    puts "here are the list of games coming out this year, to view details of a specific game, type the exact name of the game you'd like to view"
    #Build scrape
  end
  
  def month
    puts "please enter the month you would like to view:"
    #build scrape
  end
  
  def specific_game
    puts "please enter in the name of the game you would like to see:"
  end
  
  def goodbye
    puts "bye! check back to see if any dates have changed!"
  end
  
end