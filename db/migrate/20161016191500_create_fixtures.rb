class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.string :league
      t.text :fixture

      t.timestamps null: false
    end
  end
end
