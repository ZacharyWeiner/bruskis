class Brand < ActiveRecord::Base
	has_many :roasts
	has_many :brews 
	mount_uploader :picture, PictureUploader
end
