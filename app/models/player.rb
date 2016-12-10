class Player < ActiveRecord::Base
  belongs_to :team

  def to_param
    "#{id} #{name}".parameterize
  end
   
end
