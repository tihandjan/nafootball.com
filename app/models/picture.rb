class Picture < ActiveRecord::Base
  belongs_to :article
  mount_uploader :picture, PictureUploader
end
