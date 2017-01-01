class Manager::PlayersController < ApplicationController
    load_and_authorize_resource

    def index
        @players = Player.order('created_at DESC').paginate(page: params[:page], per_page: 30)
    end

    def new
        
    end

    def create
        @player = Player.new(player_params)
        if @player.save
            flash[:notice] = 'Игрок успешно сохранен'
            redirect_to manager_players_path
        else
            render :new
        end
    end

    def edit
        
    end

    def update
        if @player.update_attributes(player_params)
            flash[:notice] = 'Игрок успешно обновлен'
            redirect_to manager_players_path
        else
            render :edit
        end
    end

    def destroy
        @player.destroy
        flash[:notice] = 'Игрок удален успешно'
        redirect_to manager_players_path
    end

    private
    def player_params
        params.require(:player).permit(:name, :market_value, :team_id, :position, :number, :date_of_birth, :nationality, :contract_until)
    end
    
end