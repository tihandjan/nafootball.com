class Picture < ActiveRecord::Base
  belongs_to :article, polymorphic: true
  mount_uploader :picture, PictureUploader
end
