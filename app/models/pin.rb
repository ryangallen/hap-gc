class Pin < ActiveRecord::Base
	attr_accessible :category, :name, :address, :latitude, :longitude, :gmaps, :date, :time, :desc, :user_id;
	belongs_to :user

	#geocoded_by :address
	#after_validation :geocode, :if => :address_changed?

	acts_as_gmappable

	def gmaps4rails_address
	#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
	  address
	end
end
