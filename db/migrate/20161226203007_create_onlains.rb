class CreateOnlains < ActiveRecord::Migration
  def change
    create_table :onlains do |t|
      t.string :sopcast
      t.string :sopcast_quality
      t.string :acestream
      t.string :acestream_quality
      t.string :video_first
      t.string :video_second
      t.string :video_third
      t.string :video_fourth
      t.string :home_team
      t.string :away_team
      t.datetime :date

      t.timestamps null: false
    end
  end
end
