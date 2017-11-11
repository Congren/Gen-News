class Location < ApplicationRecord
	belongs_to :user
	validates_presence_of :zip
	validates_presence_of :city
	validates_presence_of :country

	def fullLocation
		return "#{city} #{zip}, #{country}"
	end

end
