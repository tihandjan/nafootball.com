class AddLeagueToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :league, :string
  end
end
