class Tagging < ActiveRecord::Base
  belongs_to :video
  belongs_to :article
  belongs_to :tag
end
