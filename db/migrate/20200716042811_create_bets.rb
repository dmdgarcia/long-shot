class CreateBets < ActiveRecord::Migration[6.0]
  def change
    create_table :bets do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :home_goals
      t.integer :away_goals
      t.belongs_to :user
      t.belongs_to :game
      t.timestamps
    end
    add_index :bets, [:user_id, :game_id], unique: true
  end
end

