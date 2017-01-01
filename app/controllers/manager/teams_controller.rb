class Manager::TeamsController < ApplicationController
    load_and_authorize_resource

    def index
        @teams = Team.order('created_at DESC').paginate(page: params[:page], per_page: 30)
    end

    def new
        
    end

    def create
        @team = Team.new(team_params)
        if @team.save
            flash[:notice] = 'Команда успешно сохранена'
            redirect_to manager_teams_path
        else
            render :new
        end
    end

    def edit
        
    end

    def update
        if @team.update_attributes(team_params)
            flash[:notice] = 'Команда успешно обновлена'
            redirect_to manager_teams_path
        else
            render :edit
        end
    end

    def destroy
        @team.destroy
        flash[:notice] = 'Команда и все ее игроки удалены успешно'
        redirect_to manager_teams_path
    end

    private
    def team_params
        params.require(:team).permit(:name, :market_value, :icon_url, :league)
    end
    
end