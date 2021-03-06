class Comment < ActiveRecord::Base

    belongs_to :user
    belongs_to :commentable, polymorphic: true
    has_many :comments, as: :commentable, dependent: :destroy

    validates :body, presence: true, length: { maximum: 1000 }

    acts_as_votable

end
