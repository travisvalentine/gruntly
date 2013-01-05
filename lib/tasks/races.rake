desc "Get races"
task :get_races => :environment do

  require 'nokogiri'
  require 'open-uri'
  # require 'mechanize'
  # require 'cgi'

  # agent = Mechanize.new

  url = "http://www.potomacriverrunning.com/pr-race-series-a4249"

  doc = Nokogiri::HTML(open(url))

  puts doc.at_css('.contententry h1').text

  doc.css('.contententry table tbody tr td:last-child').each do |race|
    # details_p    = race.at_css('p:first-child').text
    # details_s    = race.xpath('//strong/text()').text
    race_title   = race.search('strong').children.first.text

    # race_details = race.at_css('p:first-child').text
    race_details = race.search('p').children.first.text

    db_race = Race.create(name: race_title, details: race_details)
  end

end
