class BetsController < ApplicationController
    def index
        @bets = Bet.all
    end
    
    def new
        @bet = Bet.new
    end
    
    def create
        @bet = Bet.new(bets_params)
        if @bet.save
            redirect_to bet_path(@bet)
        else 
        render :new
        end
    end    

    def show
        @bet = Bet.find(params[:id])
    end
        
    def destroy
        @bet = Bet.find(params[:id])
        @bet.destroy
        redirect_to bets_path
    end
    
    private
    
    def bets_params
        params.require(:bet).permit(:home_team_id, :away_team_id, :home_goals, :away_goals, :game_id)
    end
    
end
