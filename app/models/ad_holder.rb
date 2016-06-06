class AdHolder < ActiveRecord::Base
	has_many :images, :foreign_key => "holder_id"
	has_one :vehicle_model_year, :foreign_key => "car_id"
	validates_presence_of :holder_type, :price, :car_id
	accepts_nested_attributes_for :images
end
