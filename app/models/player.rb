class Player < ActiveRecord::Base
  belongs_to :team
  
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history, :finders]
    def should_generate_new_friendly_id?
        slug.blank? || name_changed?
    end
   
end
