class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :team, index: true, foreign_key: true
      t.string :name
      t.string :position
      t.string :number
      t.string :date_of_birth
      t.string :nationality
      t.string :contract_until
      t.string :market_value

      t.timestamps null: false
    end
  end
end
