class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :full_name
      t.string :email
      t.text :message
      t.text :notification_params
      t.string :status
      t.string :transaction_id
      t.datetime :purchased_at
      t.integer :amount

      t.timestamps null: false
    end
  end
end
