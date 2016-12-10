class PlayersController < ApplicationController
    
    def index
        redirect_to root_path
    end

    def show
        @player = Player.find(params[:id])
        @team = @player.team
        @league = @team.league
        @teams = Team.all
        @players = @team.players
        @news = Article.order('created_at DESC').where(team: @team.name).paginate(page: params[:page], per_page: 5)
    end
end