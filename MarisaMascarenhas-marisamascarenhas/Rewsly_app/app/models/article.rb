class Article < ActiveRecord::Base
	validates :title, presence: true
	validates :link, presence: true
	validates :upvotes, numericality: {greater_than:1}
	validates :category, presence:true 



 def self.search(query)
		if query
			#Movie.where('title LIKE :search', {search: "%#{query}%"} )
			#
			Article.where('title LIKE :search OR category LIKE :search', {search: "%#{query}%"} )


		else
			Article.all
		end
	end	








end
