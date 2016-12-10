class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :league
      t.text :data

      t.timestamps null: false
    end
  end
end
