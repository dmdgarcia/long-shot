class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :home_id
      t.integer :away_id
      t.integer :home_goals
      t.integer :away_goals

      t.timestamps
    end
  end
end
