class AddTimeToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :time, :string
  end
end
