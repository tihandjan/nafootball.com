class AddLeagueToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :league, :string
  end
end
