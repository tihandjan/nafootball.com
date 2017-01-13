class AlterColumnTablePoints < ActiveRecord::Migration
  def up
    change_column :tables, :points, 'integer USING CAST(points AS integer)'
  end
end
