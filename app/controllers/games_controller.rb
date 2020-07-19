class GamesController < ApplicationController

    def index
        @games = Game.all
        @bets = Bet.all
    end

    def new
        @game = Game.new
        
    end

    def create
        @game = Game.new(game_params)
        if @game.save
            redirect_to game_path(@game)
        else 
            render :new
        end
    end
        
    def destroy
        @game = Game.find(params[:id])
            @game.destroy
        redirect_to games_path
    end

private

    def game_params
        params.require(:game).permit(:home_team_id, :away_team_id)
    end

end
