#!/bin/ruby

require 'open-uri'
require 'uri'
require 'optparse'
require 'date'
require 'json'


def get_quote weeknr
  cache_dir = 'cached/'
  filepath = cache_dir + weeknr + '.txt'
  if File.file?(filepath)
    File.read(filepath)
  else
    quote = download_quote weeknr
    Dir.mkdir cache_dir unless File.exists? cache_dir
    File.write(filepath, quote)
    quote
  end
end

def download_quote weeknr
  uri_str = "http://stargate-wiki.de/w/api.php?action=parse&page=Vorlage:Hauptseite/Zitat%20der%20Woche/#{weeknr}.%20Woche&format=json"
  uri = URI.parse(uri_str)
  response = JSON.parse uri.read
  quote = response['parse']['text']['*']
  quote.gsub!(/<.*?>/m, '') # remove html tags
  quote.gsub!(/\n+/, "\n") # remove tailing newlines
  quote
end

# Parse command line options

current_week_str = Date.today.strftime('%U')
current_week = current_week_str[0] == '0' ? current_week_str[1] : current_week_str

opts = { week_nr: current_week }

OptionParser.new do |o|
  o.on('-n', '--no-cache') { opts[:no_cache] = true }
  o.on('-w WEEKNR', '--week-nr=WEEKNR') { |wn| opts[:week_nr] = wn }
end.parse!

# if cache is enabled, then lookup whether we already 
# have the required quote of the week saved locally

if opts[:no_cache]
  quote = download_quote opts[:week_nr]
else
  quote = get_quote opts[:week_nr]
end

puts "Stargate Zitat der Woche, KW #{opts[:week_nr]}"
puts
puts quote