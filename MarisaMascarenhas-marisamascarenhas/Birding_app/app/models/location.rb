class Location < ActiveRecord::Base
	belongs_to :user
	validates :location_name, presence: true
	validates :longitude, presence: true
	validates :longitude, numericality: {less_than:180}
	validates :longitude, numericality: {greater_than:-180}
	validates :latitude, presence: true
	validates :latitude, numericality: {less_than:90}
	validates :latitude, numericality: {greater_than:-90}
	
end
