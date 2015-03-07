#!/usr/bin/env ruby
require 'rubygems'
require 'nokogiri'
require 'net/http'
require 'open-uri'
require 'wombat'
require 'pry'

# uri = URI('http://www.amazon.com/Cuisinart-DGB-625BC-Automatic-Coffeemaker-Brushed/dp/B001G8Y2X6/ref=sr_1_1?ie=UTF8&qid=1425504475&sr=8-1&keywords=coffe+maker+grinder')
# Net::HTTP.get(uri)
PAGE_URL = "http://www.amazon.com/Cuisinart-DGB-625BC-Automatic-Coffeemaker-Brushed/product-reviews/B001G8Y2X6/ref=cm_cr_dp_see_all_summary?ie=UTF8&showViewpoints=1&sortBy=byRankDescending"
page = Nokogiri::HTML(open(PAGE_URL))
reviews = page.css('li')[0]['href']
binding.pry
puts reviews

# class MyScraper
#   include Wombat::Crawler
#     base_url "http://www.amazon.comp"
#     path "/gp/product/B00LU2I46E/ref=s9_simh_gw_p79_d0_i4?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-1&pf_rd_r=0SSCCEVPMS1YVBPS3ACA&pf_rd_t=36701&pf_rd_p=1970559082&pf_rd_i=deskto"
#
#     some_data css: '#revMHLContainerChild > div'
# end
#
# coffee_maker = MyScraper.new
# coffee_maker.crawl
# puts coffee_maker
