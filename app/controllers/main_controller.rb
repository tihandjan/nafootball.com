class MainController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_games_table_data
    before_action :set_onlain_fixtures, only: [:index, :onlain]
    def index
        @news = Article.order('created_at DESC').where("category = 'news'").first(20)
        @articles = Article.order('created_at DESC').where("category = 'article'").first(4)
        @videos = Video.order('created_at DESC').first(5)
        @table = Table.all
        @teams = Team.all
        set_meta_tags title: 'Новости футбола, онлайн трасляции, повторы матчей',
                      site: 'nafootball.com',
                      reverse: true,
                      description: 'Футбол сегодня, последние новости, результаты матчей, таблица результатов, смотреть в повторе, обзоры, и многое другое на nafootball.com',
                      keywords: 'футбол, онлайн, таблица, результаты, расписание, новости, трансферы, голы, видео',
                      canonical: root_url,
                      twitter: {
                          card: "summary_large_image",
                          site: "@nafootball",
                          title: "Новости футбола, онлайн трасляции, повторы матчей",
                          description: "Футбол сегодня, последние новости, результаты матчей, таблица результатов, смотреть в повторе, обзоры, и многое другое на nafootball.com",
                          image: @articles.last.picture.url
                      },
                      og: {
                          title: "Новости футбола, онлайн трасляции, повторы матчей",
                          description: "Футбол сегодня, последние новости, результаты матчей, таблица результатов, смотреть в повторе, обзоры, и многое другое на nafootball.com",
                          type: 'website',
                          url: root_url,
                          image: @articles.last.picture.url
                      }
    end
    
    def change_my_team
        cookies[:user_team] = params[:team] 
        @teams = Team.all
        respond_to do |format|
           format.html { redirect_to root_path }
           format.js
        end
    end

    def onlain
        respond_to do |format|
           format.js
        end
    end

    def set_onlain_fixtures
        @fixtures_en = Match.where(["DATE(date) = ? and league = ?", Time.current+2.hours, 'apl'])
        @fixtures_it = Match.where(["DATE(date) = ? and league = ?", Time.current+2.hours, 'seria-a'])
        @fixtures_sp = Match.where(["DATE(date) = ? and league = ?", Time.current+2.hours, 'laliga'])
        @fixtures_ge = Match.where(["DATE(date) = ? and league = ?", Time.current+2.hours, 'bundesliga'])
        @fixtures_cl = Match.where(["DATE(date) = ? and league = ?", Time.current+2.hours, 'chempions-league'])

        @fixtures_en_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days+2.hours, 'apl'])
        @fixtures_it_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days+2.hours, 'seria-a'])
        @fixtures_sp_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days+2.hours, 'laliga'])
        @fixtures_ge_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days+2.hours, 'bundesliga'])
        @fixtures_cl_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days+2.hours, 'chempions-league'])

        @fixtures_en_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days+2.hours, 'apl'])
        @fixtures_it_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days+2.hours, 'seria-a'])
        @fixtures_sp_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days+2.hours, 'laliga'])
        @fixtures_ge_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days+2.hours, 'bundesliga'])
        @fixtures_cl_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days+2.hours, 'chempions-league'])
    end

    def policy
        set_meta_tags noindex: true,
                      title: 'Правила пользования',
                      site: 'nafootball.com',
                      reverse: true
    end

    def set_games_table_data
        if Delayed::Job.count == 0
            Match.delay.set_games
            Table.delay.set_table_data
        end
    end
 
end
