class AllGames::Scraper

  def self.get_page
    Nokogiri::HTML(open("https://www.gameinformer.com/2020"))
  end

  def self.scrape_year
    get_page.css("div.ds-main").each do |r|
      r.css(".calendar_entry").each do |s|
        name = s.css("a").text
        platform = s.css("em").text
        release = s.css("time").text
        url = s.css("a").attribute("href").value
        AllGames::Games.new(name, platform, release, url)
      end
    end
  end

  def self.scrape_description(name)
    page = Nokogiri::HTML(open("https://www.gameinformer.com/product/name"))
    header = page.css("div.span").text
  end


end
