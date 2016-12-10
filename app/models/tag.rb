class Tag < ActiveRecord::Base
    has_many :taggings
    has_many :articles, through: :taggings
    has_many :videos, through: :taggings
    validates :name, uniqueness: true

    def to_param
    "#{id} #{name}".parameterize
  end
end
