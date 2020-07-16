class Game < ApplicationRecord
  belongs_to :bet
  belongs_to :home_team, class_name: 'Team', foreign_key: 'home_id', required: false
  belongs_to :away_team, class_name: 'Team', foreign_key: 'away_id', required: false

  def teams
    [away_team, home_team]
  end

end
