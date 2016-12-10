class Picture < ActiveRecord::Base
  belongs_to :article, polymorphic: true
  validates :description, length: { minimum: 10, maximum: 10000 }
  mount_uploader :picture, PictureUploader
end
