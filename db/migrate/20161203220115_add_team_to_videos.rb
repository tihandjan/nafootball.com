class AddTeamToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :team_first, :string
    add_column :videos, :team_second, :string
  end
end
