require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://1000mostcommonwords.com/1000-most-common-german-words/"))
page.search('//table/tbody/tr').each do |row|
  original = row.search('td[2]').text
  translated = row.search('td[3]').text
  Card.create(
    original_text: original,
    translated_text: translated,
    )
end
