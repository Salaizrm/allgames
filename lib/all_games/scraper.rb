class AllGames::Scraper

  def self.get_page
    page = Nokogiri::HTML(open("https://www.gameinformer.com/2020"))
  end

  def self.scrape_month
    months = []

    scrape = get_page.css("div.ds-main").each do |r|
      january = r.css("h2")[0].text
      february = r.css("h2")[1].text
      march = r.css("h2")[2].text
      april = r.css("h2")[3].text
      may = r.css("h2")[4].text
      june = r.css("h2")[5].text
      september = r.css("h2")[6].text
      tba = r.css("h2")[7].text
    end
    months << scrape
  end

  def self.scrape_game
    scrape = get_page.css("div.ds-main").each do |r|
        january_games = r.css("div.view-content")[0].text
        february_games = r.css("div.view-content")[1].text
        march_games= r.css("div.view-content")[2].text
        april_games = r.css("div.view-content")[3].text
        may_games = r.css("div.view-content")[4].text
        june_games = r.css("div.view-content")[5].text
        september_games = r.css("div.view-content")[6].text
        tba_games = r.css("div.view-content")[7].text
      end
    end

end
