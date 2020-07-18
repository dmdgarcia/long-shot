class Bet < ApplicationRecord
    belongs_to :game
    belongs_to :user 

    def goals
        [away_goals, home_goals]
    end
end
