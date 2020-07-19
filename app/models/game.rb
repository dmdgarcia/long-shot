class Game < ApplicationRecord
  has_many :bets
  belongs_to :home_team, class_name: 'Team', foreign_key: 'home_team_id', required: false
  belongs_to :away_team, class_name: 'Team', foreign_key: 'away_team_id', required: false

  def teams
    [away_team, home_team]
  end

  def goals
    [away_goals, home_goals]
end

end
