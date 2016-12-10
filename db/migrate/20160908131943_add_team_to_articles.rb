class AddTeamToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :team, :string
  end
end
