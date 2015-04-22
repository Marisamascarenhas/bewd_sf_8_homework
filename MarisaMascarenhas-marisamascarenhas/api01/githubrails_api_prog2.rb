## this program prints out the names from github rails whose size is greater than 200
require 'json'
require 'rest-client'
##reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
mm_github_json = JSON.load(RestClient.get('https://api.github.com/users/rails/repos'))
front_page_ary =[]
new_story_hsh  = {}
ary_length=mm_github_json.length 
puts 'size of array is'
puts ary_length 
puts''
x=0
while x<ary_length	
##new_story_hsh["namem"]=[mm_github_json[x]['name']]
##puts new_story_hsh["namem"]
##puts mm_github_json[x]['size'].class
##mm_github_json[x]['size']
if mm_github_json[x]['size']>200.0 then puts mm_github_json[x]['name']
puts mm_github_json[x]['size']
else
end
x=x+1
end

