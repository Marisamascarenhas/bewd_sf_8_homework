## this program prints out the 25 titles from reddit in a random order
require 'json'
require 'rest-client'
##reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
mm_github_json = JSON.load(RestClient.get('https://api.github.com/users/rails/repos'))
##puts reddit_json['data']['children'][0]['data']['title'] 
##puts reddit_json['data']['children'][0]['data']['subreddit']
##puts reddit_json['data']['children'][0]['data']['ups']
front_page_ary =[]
new_story_hsh  = {}
ary_length=mm_github_json.length 
puts 'size of array is'
puts ary_length 
puts''
x=0
while x<ary_length	
##new_story_hsh["titlem"]=[reddit_json['data']['children'][x]['data']['title']] 
##new_story_hsh["categorym"]= [reddit_json['data']['children'][x]['data']['subreddit']]
##new_story_hsh[:upsm]=[reddit_json['data']['children'][x]['data']['ups']] 
##puts new_story_hsh[:upsm] 
##puts new_story_hsh["titlem"]
##puts new_story_hsh["categorym"]
##puts new_story_hsh[:upsm]
puts "ok "
x=x+1
end
puts ary_length