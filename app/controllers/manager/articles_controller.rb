class Manager::ArticlesController < ApplicationController
    load_and_authorize_resource

    def index
        @articles = Article.order('created_at DESC').paginate(page: params[:page], per_page: 10)
    end

    def new
        @article = Article.new
        @tag = @article.tags.build
        @tagging = @article.taggings.build
        @picture = @article.pictures.build
    end

    def create
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = 'Статья успешно создана'
            redirect_to manager_articles_path
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @article.update_attributes(article_params)
            flash[:notice] = 'Статья успешно обновлена'
            redirect_to manager_articles_path
        else
            render :edit
        end
    end

    def destroy
        @article = Article.find(params[:id]).destroy
        flash[:notice] = 'Статья успешно удалена'
        redirect_to manager_articles_path
    end

    private

    def article_params
        params.require(:article).permit(:title, :description, :summary, :source, :image_alt, :picture, :main, :team, :team_second, :league, :category, tags_attributes: [:name], taggings_attributes: [:article_id, :tag_id], pictures_attributes: [:picture, :description, :image_alt])
    end
    
end