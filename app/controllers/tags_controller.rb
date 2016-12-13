class TagsController < ApplicationController
    def index
        redirect_to root_path
    end

    def show
        @tag_name = Tag.find(params[:id])
        @h1 = @tag_name.name
        @articles = @tag_name.articles.order('created_at DESC').paginate(page: params[:page], per_page: 8)
        @news = Article.order('created_at DESC').first(14)
        @editional_class = 'articles'
        set_meta_tags title: 'Новости футбола, онлайн трасляции, повторы матчей',
                      site: 'nafootball.com',
                      reverse: true,
                      description: 'Футбол сегодня, последние новости, результаты матчей, таблица результатов, смотреть в повторе, обзоры, и многое другое на nafootball.com',
                      keywords: 'футбол, онлайн, таблица, результаты, расписание, новости, трансферы, голы, видео',
                      canonical: tag_url(@tag_name)
    end

    def video_tag
        @tag_name = Tag.find(params[:id])
        @h1 = @tag_name.name
        @videos = @tag_name.videos.order('created_at DESC').paginate(page: params[:page], per_page: 16)
        @news = Article.order('created_at DESC').first(14)
        @editional_class = 'articles videos'
        set_meta_tags title: "Повторы матчей, обзоры, записи голов",
                        site: 'nafootball.com',
                        reverse: true,
                        description: "Смотреть матчи в записи, обзоры, превью, повторы голов, футбольные ток шоу от nafootball.com",
                        keywords: "футбол, онлайн, обзоры, повторы, видео, зиписи, архив",
                        canonical: videos_tag_url(@tag_name)
    end
end