require 'pry'
require 'nokogiri'

class AllGames::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.gameinformer.com/2020"))
  end

  def scrape_page_index(year)
    self.get_page.css("div.ds-main").each do |game|
      month = game.css("")
      name = game.css("h2").attribute("div.views-entity-embed").value
    end
  end

end
