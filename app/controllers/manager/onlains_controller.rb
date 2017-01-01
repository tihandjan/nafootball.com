class Manager::OnlainsController < ApplicationController
    load_and_authorize_resource
    def index
        @onlains = Onlain.order('created_at DESC').paginate(page: params[:page], per_page: 10)
    end

    def new
        
    end

    def create
        @onlain = Onlain.new(onlain_params)
        if @onlain.save
            flash[:notice] = 'Onlain успешно создан'
            redirect_to manager_onlains_path
        else
            render :new
        end
    end

    def edit
        
    end

    def update
        if @onlain.update_attributes(onlain_params)
            flash[:notice] = 'Onlain обновлено успешно'
            redirect_to manager_onlains_path
        else
            render :edit
        end
    end

    def destroy
        @onlain = Onlain.find(params[:id]).destroy
        flash[:notice] = 'Запись успешно удалена'
        redirect_to manager_onlains_path
    end

    private
    def onlain_params
        params.require(:onlain).permit(:sopcast, :sopcast_quality, :acestream, :acestream_quality, :home_team, :away_team, :date, :video_first, :video_second, :video_third, :video_fourth)
    end
end