require 'json'
require 'rest-client'

class Birds
  attr_accessor :names

  def initialize
    @names= Array.new
  end
 

  def fetch_names
    ##reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
    reddit_json = JSON.load(RestClient.get('http://www.reddit.com/r/USANews.json'))
    reddit_json['data']['children'].each do |child|
      title= child['data']['title']
      my_story = Story.new(title)
      @stories.push(my_story)
    end
   puts ' Names of 12 birds' 
  end 

  

 end