class Manager::PicturesController < ApplicationController
    load_and_authorize_resource

    def index
        @pictures = Picture.order('created_at DESC').paginate(page: params[:page], per_page: 10)
    end

    def edit
    end

    def update
        if @picture.update_attributes(picture_params)
            flash[:notice] = 'Статья(Доп) успешно обновлена'
            redirect_to manager_pictures_path
        else
            render :edit
        end
    end

    def destroy
        @picture = Picture.find(params[:id]).destroy
        flash[:notice] = 'Статья(Доп) успешно удалена'
        redirect_to manager_pictures_path
    end

    private

    def picture_params
        params.require(:picture).permit(:description, :image_alt, :picture, :article_id)
    end
end