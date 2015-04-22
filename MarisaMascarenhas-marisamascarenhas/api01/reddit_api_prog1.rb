## this program prints out the 25 titles from reddit in a random order
require 'json'
require 'rest-client'
reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
##puts reddit_json.class
##puts reddit_json['data']['children'][0]['data']['title'] 
##puts reddit_json['data']['children'][0]['data']['subreddit']
##puts reddit_json['data']['children'][0]['data']['ups']
front_page_ary =[]
new_story_hsh  = {}
##new_story_hsh["titlem"]=[reddit_json['data']['children'][0]['data']['title']] 
##new_story_hsh["categorym"]= [reddit_json['data']['children'][0]['data']['subreddit']]
##new_story_hsh[:upsm]=[reddit_json['data']['children'][0]['data']['ups']]
##puts new_story_hsh["titlem"]
##puts new_story_hsh["categorym"]
##puts new_story_hsh[:upsm]
##puts new_story_hsh["titlem"],new_story_hsh["categorym"],new_story_hsh[:upsm]
##new_story_hsh["titlem"]=[reddit_json['data']['children'][1]['data']['title']] 
##new_story_hsh["categorym"]= [reddit_json['data']['children'][1]['data']['subreddit']]
##new_story_hsh[:upsm]=[reddit_json['data']['children'][1]['data']['ups']]
##puts new_story_hsh["titlem"]
##puts new_story_hsh["categorym"]
##puts new_story_hsh[:upsm]
##puts new_story_hsh["titlem"],new_story_hsh["categorym"],new_story_hsh[:upsm]
puts 'now comes the tough part'
ary_length=reddit_json['data']['children'].length 
puts 'size of array is'
puts ary_length 
puts''
x=0
while x<ary_length
y=rand(ary_length)	
new_story_hsh["titlem"]=[reddit_json['data']['children'][y]['data']['title']] 
new_story_hsh["categorym"]= [reddit_json['data']['children'][y]['data']['subreddit']]
new_story_hsh[:upsm]=[reddit_json['data']['children'][y]['data']['ups']] 
##y=new_story_hsh["categorym"]
##next_story_hsh[:upsm] = [reddit_json['data']['children'][x+1]['data']['ups']] 
##if reddt_json['data']['children'][x]['data']['subreddit']=='todayilearned'
##if new_story_hsh[:upsm] > 4000 
puts new_story_hsh["titlem"]
##puts new_story_hsh["categorym"]
##puts new_story_hsh[:upsm]
puts ''
x=x+1
end


 
