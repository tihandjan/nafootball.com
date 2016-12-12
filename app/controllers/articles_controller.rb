class ArticlesController < ApplicationController

  def index
      @league = params[:league_id]
      @articles = Article.paginate(page: params[:page], per_page: 7).order('created_at DESC').where(league: @league, category: 'article')

    if @league == 'apl'
      @h1 = "Привет я буду h1 для #{@league}"
      @active = 'apl-active'
    elsif @league == 'seria-a'
      @h1 = "Привет я буду h1 для #{@league}"
      @active = 'seria-a-active'
    elsif @league == 'bundesliga'
      @h1 = "Привет я буду h1 для #{@league}"
      @active = 'bundesliga-active'
    elsif @league == 'laliga'
      @h1 = "Привет я буду h1 для #{@league}"
      @active = 'laliga-active'
    elsif @league == 'chempions-league'
      @h1 = "Привет я буду h1 для #{@league}"
      @active = 'chempions-league-active'
    elsif @league == 'all'
      @articles = Article.paginate(page: params[:page], per_page: 7).order('created_at DESC').where(category: 'article')
      @active = 'rest-active'
      @h1 = "Привет я буду h1 для всех статей"
    end
  end

  def show
    @article = Article.find(params[:id])
    @news = Article.order('created_at DESC').where(category: 'news', league: params[:league_id]).all_except(@article).first(15)

    set_meta_tags title: @article.title,
                  site: 'nafootball.com',
                  reverse: true,
                  description: @article.summary,
                  keywords: 'футбол, онлайн, таблица, результаты, расписание, новости, трансферы, голы, видео',
                  twitter: {
                      card: "summary_large_image",
                      site: "@nafootball",
                      title: @article.title,
                      description: @article.summary,
                      image: @article.picture.url
                  },
                  og: {
                      title: @article.title,
                      description: @article.summary,
                      type: 'website',
                      url: league_article_path(@article.league, @article),
                      image: @article.picture.url
                  }
  end
    
end
