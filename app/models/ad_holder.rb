class AdHolder < ActiveRecord::Base
	has_many :images, :foreign_key => "holder_id"
	validates_presence_of :holder_type, :price
	accepts_nested_attributes_for :images
end
