class Image < ActiveRecord::Base
	belongs_to :ad_holder, :foreign_key => "holder_id"
	mount_uploader :file, AvatarUploader
end
