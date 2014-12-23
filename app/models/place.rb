class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :photos
	geocoded_by :address
	after_validation :geocode

	validates :name, :presence => true, :length => { :within => 3...100}
	validates :address, :presence => true
	validates :description, :presence => true
end
