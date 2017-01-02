class Manager::TablesController < ApplicationController
    load_and_authorize_resource

    def index
        @tables = Table.order('created_at DESC').paginate(page: params[:page], per_page: 30)
    end

    def new
        
    end

    def create
        @table = Table.new(table_params)
        if @table.save
            flash[:notice] = 'Запись успешно сохранена'
            redirect_to manager_tables_path
        else
            render :new
        end
    end

    def edit
        
    end

    def update
        if @table.update_attributes(table_params)
            flash[:notice] = 'Запись успешно обновлена'
            redirect_to manager_tables_path
        else
            render :edit
        end
    end

    def destroy
        @table.destroy
        flash[:notice] = 'Запись удалена успешно'
        redirect_to manager_tables_path
    end

    private
    def table_params
        params.require(:table).permit(:league, :data, :teamName, :position, :playedGames, :points, :goals, :goalsAgainst, :goalDifference, :wins, :draws, :losses, :group)
    end
    
end