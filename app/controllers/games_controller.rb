class GamesController < ApplicationController

def index
    @games = Game.all
    
end

def game
    @games.each do |game|
        game.home_id - game.away_id
    end
end

def new
    @game = Game.new
end

def create
    @game = Game.new(game_params)
end

private

def game_params
    params.require(:game).permit(:home_id, :away_id)
end

end
