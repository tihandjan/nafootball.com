class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :code
      t.string :short_name
      t.string :market_value
      t.string :fixtures
      t.string :icon_url

      t.timestamps null: false
    end
  end
end
