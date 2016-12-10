class AddColumnsToTable < ActiveRecord::Migration
  def change
    add_column :tables, :position, :string
    add_column :tables, :teamName, :string
    add_column :tables, :crestURI, :string
    add_column :tables, :playedGames, :string
    add_column :tables, :points, :string
    add_column :tables, :goals, :string
    add_column :tables, :goalsAgainst, :string
    add_column :tables, :goalDifference, :string
    add_column :tables, :wins, :string
    add_column :tables, :draws, :string
    add_column :tables, :losses, :string
  end
end
