class AllGames::Scraper

  def self.get_page
    @doc = Nokogiri::HTML(open("https://www.gameinformer.com/2020"))
  end

  def self.scrape_month
    @doc.css("div.ds-main").each do |r|
      r.css(".calendar_entry").each do |s|
        name = s.css("a")[0].text
        platform = s.css("em")[0].text
        release = s.css("time")[0].text
        url = s.css("a")[0].attribute("href").text
        group = AllGames::Games.new(name, platform, release, url)
      end
    end
  end

  def self.scrape_description(game)
    @doc = Nokogiri::HTML(open(game.url))
    game.description = @doc.css("div.views-element-container").text
    binding.pry
  end

  def strip_bad_chars(text)
    text.gsub!("n");
    text.gsub!("t");
    text.gsub!("\ ")
  return text
end

end
