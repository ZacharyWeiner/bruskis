class Brand < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	has_many :roasts
	has_many :brews 

end
