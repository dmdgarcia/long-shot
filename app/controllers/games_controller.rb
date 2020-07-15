class GamesController < ApplicationController

def index
    @games = Game.all
    
end

def game
    @games.each do |game|
        game.home_id - game.away_id
    end
end


end
