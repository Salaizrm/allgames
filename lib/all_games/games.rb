class AllGames::Games

  attr_accessor :name, :platform, :release, :url

  @@all = []

  def initialize(name, platform, release, url)
    @name = name
    @platform = platform
    @release = release
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

end
