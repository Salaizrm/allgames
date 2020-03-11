require 'pry'
require 'nokogiri'

class AllGames::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.gameinformer.com/2020"))
  end

  def scrape_page_index(year)
    self.get_page.css("div.ds-main")
  end

  def create_list
    scrape_page_index.each do |r|
      AllGames::Games.new_from_index_page(r)
    end
  end

end
