class CreateBets < ActiveRecord::Migration[6.0]
  def change
    create_table :bets do |t|
      t.integer :goals
      t.belongs_to :game
      t.timestamps
    end
  end
end