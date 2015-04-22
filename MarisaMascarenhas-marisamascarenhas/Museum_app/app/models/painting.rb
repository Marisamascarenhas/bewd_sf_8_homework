class Painting < ActiveRecord::Base
	belongs_to :artist
	belongs_to :museum

def self.search(query)
   if query
   Painting.where('title LIKE :search', {search: "%#{query}%"})
   else 
   Painting.all
end

end

end
