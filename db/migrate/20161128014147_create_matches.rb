class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :selfFixtures
      t.string :competition
      t.string :homeTeamHref
      t.string :awayTeamHref
      t.datetime :date
      t.string :status
      t.string :matchday
      t.string :homeTeamName
      t.string :awayTeamName
      t.string :goalsHomeTeam
      t.string :goalsAwayTeam
      t.string :league

      t.timestamps null: false
    end
  end
end
