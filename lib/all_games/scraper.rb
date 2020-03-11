class AllGames::Scraper

  def self.get_page
    page = Nokogiri::HTML(open("https://www.gameinformer.com/2020"))
    binding.pry
  end

  def self.scrape_page_index
    self.get_page.css("div.ds-main").each do |r|
      month = r.css("h2").include?("Jan","Feb","Mar","Apr","May","June","Sept","To Be")
      year = r.css()

    end
  end

  # def self.create_list
  #   scrape_page_index.each do |r|
  #     AllGames::Games.new_from_index_page(r)
  #   end
  # end

end
