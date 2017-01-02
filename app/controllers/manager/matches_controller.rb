class Manager::MatchesController < ApplicationController
    load_and_authorize_resource

    def index
        @matches = Match.order('created_at DESC').paginate(page: params[:page], per_page: 30)
    end

    def new
        
    end

    def create
        @match = Match.new(match_params)
        if @match.save
            flash[:notice] = 'Матч успешно сохранен'
            redirect_to manager_matches_path
        else
            render :new
        end
    end

    def edit
        
    end

    def update
        if @match.update_attributes(match_params)
            flash[:notice] = 'Матч успешно обновлен'
            redirect_to manager_matches_path
        else
            render :edit
        end
    end

    def destroy
        @match.destroy
        flash[:notice] = 'Матч удален успешно'
        redirect_to manager_matches_path
    end

    private
    def match_params
        params.require(:match).permit(:date, :status, :matchday, :homeTeamName, :awayTeamName, :goalsHomeTeam, :goalsAwayTeam, :league)
    end
    
end