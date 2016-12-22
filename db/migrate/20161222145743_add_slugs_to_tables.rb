class AddSlugsToTables < ActiveRecord::Migration
  def change
    add_column :articles, :slug, :string
    add_column :videos, :slug, :string
    add_column :teams, :slug, :string
    add_column :players, :slug, :string

    add_index :articles, :slug
    add_index :videos, :slug
    add_index :teams, :slug
    add_index :players, :slug
  end
end
