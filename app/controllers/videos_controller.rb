class VideosController < ApplicationController
    
    def index
        @editional_class = 'articles'
        @news = Article.order('created_at DESC').where("category = 'news'").first(20)
        if params[:league_id] == 'all'
          @videos = Video.paginate(page: params[:page], per_page: 12).order('created_at DESC')
        else
          @videos = Video.paginate(page: params[:page], per_page: 12).order('created_at DESC').where(league: params[:league_id])
        end

        if params[:league_id] == 'apl'
          @h1 = "Записи матчей. АПЛ"
          @active = 'apl-active'
          set_meta_tags title: "Повторы матчей, обзоры Чемпионата Англии",
                        site: 'nafootball.com',
                        reverse: true,
                        description: "Смотреть матчи Английской премьер Лиги в записи, обзоры, превью, повторы голов, футбольные ток шоу от nafootball.com",
                        keywords: "футбол, онлайн, обзоры, повторы, видео, зиписи, архив"
        elsif params[:league_id] == 'seria-a'
          @h1 = "Записи матчей. Серия А"
          @active = 'seria-a-active'
          set_meta_tags title: "Повторы матчей, обзоры Чемпионата Италии",
                        site: 'nafootball.com',
                        reverse: true,
                        description: "Смотреть матчи в записи, обзоры, превью, повторы голов, футбольные ток шоу от nafootball.com",
                        keywords: "футбол, онлайн, обзоры, повторы, видео, зиписи, архив"
        elsif params[:league_id] == 'bundesliga'
          @h1 = "Записи матчей. Бундеслига"
          @active = 'bundesliga-active'
          set_meta_tags title: "Повторы матчей, обзоры Чемпионата Германии",
                        site: 'nafootball.com',
                        reverse: true,
                        description: "Смотреть матчи в записи, обзоры, превью, повторы голов, футбольные ток шоу от nafootball.com",
                        keywords: "футбол, онлайн, обзоры, повторы, видео, зиписи, архив"
        elsif params[:league_id] == 'laliga'
          @h1 = "Записи матчей. Ла Лига"
          @active = 'laliga-active'
          set_meta_tags title: "Повторы матчей, обзоры Чемпионата Испании",
                        site: 'nafootball.com',
                        reverse: true,
                        description: "Смотреть матчи Примеры в записи, обзоры, превью, повторы голов, футбольные ток шоу от nafootball.com",
                        keywords: "футбол, онлайн, обзоры, повторы, видео, зиписи, архив"
        elsif params[:league_id] == 'chempions-league'
          @h1 = "Записи матчей. Лига Чемпионов"
          @active = 'chempions-league-active'
          set_meta_tags title: "Повторы матчей, обзоры Лиги Чемпионов",
                        site: 'nafootball.com',
                        reverse: true,
                        description: "Смотреть матчи Лиги Чемпионов в записи, обзоры, превью, повторы голов, футбольные ток шоу от nafootball.com",
                        keywords: "футбол, онлайн, обзоры, повторы, видео, зиписи, архив"
        elsif params[:league_id] == 'all'
          @h1 = "Записи матчей"
          @active = 'rest-active'
          set_meta_tags title: "Повторы матчей, обзоры, записи голов",
                        site: 'nafootball.com',
                        reverse: true,
                        description: "Смотреть матчи в записи, обзоры, превью, повторы голов, футбольные ток шоу от nafootball.com",
                        keywords: "футбол, онлайн, обзоры, повторы, видео, зиписи, архив"
        end
    end
     
    def show
        @editional_class = 'articles'
        @video = Video.find(params[:id])
        @videos = Video.order('created_at DESC').where(league: params[:league_id]).all_except(@video).first(4)
        @news = Article.order('created_at DESC').where(category: 'news').first(12)
        set_meta_tags title: @video.title,
                      site: 'nafootball.com',
                      reverse: true,
                      description: 'Смотреть матчи в записи, обзоры, превью, повторы голов, футбольные ток шоу от nafootball.com',
                      keywords: 'Спорт, видео, бесплатно, клипы, футбол, чемпионат, интервью, основные моменты, УЕФА, Чемпионов, Лиги, онлайн, в повторе, запись',
                      twitter: {
                          card: "summary_large_image",
                          site: "@nafootball_com",
                          title: @video.title,
                          description: "Смотреть матчи в записи, обзоры, превью, повторы голов, футбольные ток шоу от nafootball.com",
                          image: "http://nafootball.com#{@video.picture.url}"
                      },
                      og: {
                          title: @video.title,
                          description: "Смотреть матчи в записи, обзоры, превью, повторы голов, футбольные ток шоу от nafootball.com",
                          type: 'website',
                          image: "http://nafootball.com#{@video.picture.url}"
                      }
    end
    
end