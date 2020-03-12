class AllGames::Scraper

  def self.get_page
    page = Nokogiri::HTML(open("https://www.gameinformer.com/2020"))
  end

  def self.scrape_month
    scrape = get_page.css("div.ds-main").each do |r|
      r.css(".calendar_entry").each do |s|
        name = s.css("a")[0].text
        platform = s.css("em")[0].text
        release = s.css("time")[0].text
        url = s.css("a")[0].attribute("href").text
        AllGames::Games.new(name,platform,release,url)
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
