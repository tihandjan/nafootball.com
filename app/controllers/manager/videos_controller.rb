class Manager::VideosController < ApplicationController
    load_and_authorize_resource

    def index
        @videos = Video.order('created_at DESC').paginate(page: params[:page], per_page: 10)
    end

    def new
        @video = Video.new
        @tag = @video.tags.build
        @tagging = @video.taggings.build
    end

    def create 
        @video = Video.new(video_params)
        if @video.save
            flash[:notice] = 'Видео создано успешно'
            redirect_to manager_videos_path
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @video.update_attributes(video_params)
            flash[:notice] = 'Видео успешно обновлено'
            redirect_to manager_videos_path
        else
            render :edit
        end
    end

    def destroy
        @video = Video.find(params[:id]).destroy
        flash[:notice] = 'Видео успешно удалено'
        redirect_to manager_videos_path
    end

    private
    def video_params
        params.require(:video).permit(:title, :team_first, :team_second, :code, :image_alt, :time, :league, :picture, tags_attributes: [:name], taggings_attributes: [:video_id, :tag_id])
    end
end