class Movie < ActiveRecord::Base
validates :title, presence: true
validates :description, presence: true, length: {minimum: 11}
validates :year_released, numericality: { greater_than: 1800 }
validates :rating, numericality: {greater_than: 0}
validates :rating, numericality: {less_than: 6}
#validates :rating, numericality: { greater_than: 1}
	
	# class methods
	def self.search(query)
		if query
			#Movie.where('title LIKE :search', {search: "%#{query}%"} )
			#
			Movie.where('title LIKE :search OR description LIKE :search OR year_released LIKE :search', {search: "%#{query}%"} )


		else
			Movie.all
		end
	end	

	# instance method
	#def say_year
	#	"The year of the movie was #{year_released}"
	#end

end
