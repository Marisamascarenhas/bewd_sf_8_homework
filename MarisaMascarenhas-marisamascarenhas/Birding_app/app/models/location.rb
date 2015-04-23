class Location < ActiveRecord::Base
	belongs_to :user
	validates :location_name, presence: true
	validates :longitude, presence: true
	validates :longitude, numericality: {less_than:1000}
	validates :latitude, presence: true
	validates :latitude, numericality: {less_than:1}
	
end
