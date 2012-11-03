class Pin < ActiveRecord::Base
	attr_accessible :category, :name, :address, :latitude, :longitude, :date, :time, :desc, :user_id;
	belongs_to :user

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
end
