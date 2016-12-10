class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :picture
      t.string :title
      t.string :summary
      t.text :description

      t.timestamps null: false
    end
  end
end
