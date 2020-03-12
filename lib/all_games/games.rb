class AllGames::Games

  attr_accessor :name, :platform, :release, :url

  @@all = []

  def initialize(name,platform,release,url)
    @name = name
    @platform = platform
    @release = release
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.month(user_input)
    @@all.select {|s| s.release.include?(user_input)}
  end

  def self.year
    @@all.select
  end


end
