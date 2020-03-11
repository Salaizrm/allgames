class AllGames::Games
  
  attr_accessor :name, :release_date, :platforms, :developer, :publisher, :usrb, :url
  
  @@all = []
  
  def initialize
    @name = name
    @release_date = release_date
    @platforms = platforms
    @developer = developer
    @publisher = publisher
    @usrb = usrb
    @url = url
    @@all << self
  end
  
  
end