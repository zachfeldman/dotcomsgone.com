require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("https://news.ycombinator.com/item?id=8781768"))
comments_h = {}

# doc.css('tr').select{|a| }

# doc.css('.comment')

l = doc.css('table')[3].css('tr').select{|a| a.css("img").select{|l| l.attributes["width"].value == "0" }.length > 0 }.each do |comment|
  comments_h[(0...8).map { (65 + rand(26)).chr }.join] = comment.css(".comment").to_s.gsub("\"", "'")
end

File.open("content.txt", 'w') { |file| Marshal.dump(comments_h, file) }
