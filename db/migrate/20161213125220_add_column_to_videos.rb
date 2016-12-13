class AddColumnToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :image_alt, :string
  end
end
