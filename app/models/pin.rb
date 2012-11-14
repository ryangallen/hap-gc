class Pin < ActiveRecord::Base
	attr_accessible :category, :name, :address, :latitude, :longitude, :gmaps, :date, :time, :desc, :user_id;
	belongs_to :user

	validates :category, presence: true
	validates :name, presence: true,
	                 length: { minimum: 2, maximim: 200}
	validates :address, presence: true,
	                 length: { minimum: 2, maximim: 200}
	validates :date, presence: true
	validates :time, presence: true
	validates :desc, presence: true,
	                 length: { minimum: 2, maximim: 2000}

	validates :user_id, presence: true

	#geocoded_by :address
	#after_validation :geocode, :if => :address_changed?

	acts_as_gmappable

	def gmaps4rails_address
	  address
	end

	def desc_short
		desc[0..199] + "..."
	end
end