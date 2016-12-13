class ArticlesController < ApplicationController

  def index
      @league = params[:league_id]
      @articles = Article.paginate(page: params[:page], per_page: 7).order('created_at DESC').where(league: @league, category: 'article')
      @is_not_index = true
      
    if @league == 'apl'
      @h1 = "Футбольные статьи. АПЛ"
      @active = 'apl-active'
      set_meta_tags title: "Статьи о футболе, Английская Премьер Лига",
                    site: 'nafootball',
                    reverse: true,
                    keywords: "футбол, спорт, статьи, о, футболисты, трансферы, биография, слухи, интересные",
                    description: "Интересные статьи, АПЛ и многое другое"
    elsif @league == 'seria-a'
      @h1 = "Футбольные статьи. Серия А"
      @active = 'seria-a-active'
      set_meta_tags title: "Статьи о футболе, Чемпионат Италии",
                    site: 'nafootball',
                    reverse: true,
                    keywords: "футбол, спорт, статьи, о, футболисты, трансферы, биография, слухи, интересные",
                    description: "Интересные статьи, Серии А и многое другое"
    elsif @league == 'bundesliga'
      @h1 = "Футбольные статьи. Бундеслига"
      @active = 'bundesliga-active'
      set_meta_tags title: "Статьи о футболе, Чемпионат Гремании",
                    site: 'nafootball',
                    reverse: true,
                    keywords: "футбол, спорт, статьи, о, футболисты, трансферы, биография, слухи, интересные",
                    description: "Интересные статьи, Бундеслиги и многое другое"
    elsif @league == 'laliga'
      @h1 = "Футбольные статьи. Ла Лига"
      @active = 'laliga-active'
      set_meta_tags title: "Статьи о футболе, Чемпионат Испании",
                    site: 'nafootball',
                    reverse: true,
                    keywords: "футбол, спорт, статьи, о, футболисты, трансферы, биография, слухи, интересные",
                    description: "Интересные статьи, Ла Лиги и многое другое"
    elsif @league == 'chempions-league'
      @h1 = "Футбольные статьи. Лига Чемпионов"
      @active = 'chempions-league-active'
      set_meta_tags title: "Статьи о футболе, Лига Чемпионов",
                    site: 'nafootball',
                    reverse: true,
                    keywords: "футбол, спорт, статьи, о, футболисты, трансферы, биография, слухи, интересные",
                    description: "Интересные статьи, Лига Чемпионов и многое другое"
    elsif @league == 'all'
      @articles = Article.paginate(page: params[:page], per_page: 7).order('created_at DESC').where(category: 'article')
      @active = 'rest-active'
      @h1 = "Интересные статьи"
      set_meta_tags title: "Статьи о футболе, все чемпионаты",
                    site: 'nafootball',
                    reverse: true,
                    keywords: "футбол, спорт, статьи, о, футболисты, трансферы, биография, слухи, интересные",
                    description: "Интересные статьи, все про футбол, спорт и многое другое"
    end
  end

  def show
    @article = Article.find(params[:id])
    @news = Article.order('created_at DESC').where(category: 'news').all_except(@article).first(15)

    set_meta_tags title: @article.title,
                  site: 'nafootball.com',
                  reverse: true,
                  description: @article.summary,
                  keywords: 'футбол, онлайн, таблица, результаты, расписание, новости, трансферы, голы, видео',
                  canonical: league_article_url(@article.league, @article),
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
