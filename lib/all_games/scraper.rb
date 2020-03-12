class AllGames::Scraper

  def self.get_page
    page = Nokogiri::HTML(open("https://www.gameinformer.com/2020"))
  end

  def self.scrape_month
    scrape = get_page.css("div.ds-main").each do |r|
      r.css(".calendar_entry").each do |s|
        name = s.text[0]
        release = s.text[0]
        platform = s.text[0]
        url = s.text[0]
        AllGames::Games.new(name,release,platform,url)
      end
    end
  end

  def strip_bad_chars(text)
    text.gsub!("n");
    text.gsub!("t");
    text.gsub!("\ ")
  return text
end

end
