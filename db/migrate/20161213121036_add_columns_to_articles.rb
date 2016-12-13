class AddColumnsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :team_second, :string
    add_column :articles, :image_alt, :string
    add_column :articles, :main, :boolean, default: false
  end
end
