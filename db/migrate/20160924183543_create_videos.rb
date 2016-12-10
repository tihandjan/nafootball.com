class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :picture
      t.string :youtube_link
      t.text :code

      t.timestamps null: false
    end
  end
end
