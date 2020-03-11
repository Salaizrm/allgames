class AllGames::Scraper

  def self.get_page
    page = Nokogiri::HTML(open("https://www.gameinformer.com/2020"))
  end

  def self.scrape_page_index
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
    scrape
  end

  # def self.create_list
  #   scrape_page_index.each do |r|
  #     AllGames::Games.new_from_index_page(r)
  #   end
  # end

end
