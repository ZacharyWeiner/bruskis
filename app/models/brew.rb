class Brew < ActiveRecord::Base
  belongs_to :roast
  belongs_to :brand
  mount_uploader :picture, PictureUploader
end
