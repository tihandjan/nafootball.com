class AddAvatarcToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatarc, :string
  end
end
