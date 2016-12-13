class AddColumnToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :image_alt, :string
  end
end
