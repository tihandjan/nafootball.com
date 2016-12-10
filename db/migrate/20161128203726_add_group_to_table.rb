class AddGroupToTable < ActiveRecord::Migration
  def change
    add_column :tables, :group, :string
  end
end
