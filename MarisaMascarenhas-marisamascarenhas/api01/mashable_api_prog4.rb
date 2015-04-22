# this program prints out the names from github rails whose size is greater than 200
require 'json'
require 'rest-client'
mm_mashable_json = JSON.load(RestClient.get('http://www.mashable.com/stories.json'))

puts mm_mashable_json[new].class
puts mm_mashable_json[new][0][title]

