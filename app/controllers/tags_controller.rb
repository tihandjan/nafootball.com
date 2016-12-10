class TagsController < ApplicationController
    def index
        redirect_to root_path
    end

    def show
        @h1 = params[:id]
        @articles = Tag.find(params[:id]).articles.order('created_at DESC').paginate(page: params[:page], per_page: 8)
        @news = Article.order('created_at DESC').first(14)
        @editional_class = 'articles'
    end

    def video_tag
        @h1 = params[:id]
        @videos = Tag.find(params[:id]).videos.order('created_at DESC').paginate(page: params[:page], per_page: 16)
        @news = Article.order('created_at DESC').first(14)
        @editional_class = 'articles videos'
    end
end