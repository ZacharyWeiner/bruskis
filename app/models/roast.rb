class Roast < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :brand
  has_many :brews
end
