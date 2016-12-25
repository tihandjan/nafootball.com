class MainController < ApplicationController
    skip_before_action :verify_authenticity_token
    # before_action :set_games_table_data
    before_action :set_onlain_fixtures, only: [:index, :onlain]
    def index
        @main_news = Article.order('created_at DESC').where(category: 'news', main: true).first(4)
        @news = Article.order('created_at DESC').where(category: 'news').all_except(@main_news.map {|a| a.id}).first(20)
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
                          site: "@nafootball_com",
                          title: "Новости футбола, онлайн трасляции, повторы матчей",
                          description: "Футбол сегодня, последние новости, результаты матчей, таблица результатов, смотреть в повторе, обзоры, и многое другое на nafootball.com",
                          image: ("http://nafootball.com#{@main_news.first.picture.url}" if @main_news.first.presence)
                      },
                      og: {
                          title: "Новости футбола, онлайн трасляции, повторы матчей",
                          description: "Футбол сегодня, последние новости, результаты матчей, таблица результатов, смотреть в повторе, обзоры, и многое другое на nafootball.com",
                          type: 'website',
                          url: root_url,
                          image: ("http://nafootball.com#{@main_news.first.picture.url}" if @main_news.first.presence)
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
        @fixtures_en = Match.last(5)
        # @fixtures_en = Match.where(["DATE(date) = ? and league = ?", Time.current, 'apl'])
        @fixtures_it = Match.where(["DATE(date) = ? and league = ?", Time.current, 'seria-a'])
        @fixtures_sp = Match.where(["DATE(date) = ? and league = ?", Time.current, 'laliga'])
        @fixtures_ge = Match.where(["DATE(date) = ? and league = ?", Time.current, 'bundesliga'])
        @fixtures_cl = Match.where(["DATE(date) = ? and league = ?", Time.current, 'chempions-league'])

        @fixtures_en_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days, 'apl'])
        @fixtures_it_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days, 'seria-a'])
        @fixtures_sp_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days, 'laliga'])
        @fixtures_ge_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days, 'bundesliga'])
        @fixtures_cl_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days, 'chempions-league'])

        @fixtures_en_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'apl'])
        @fixtures_it_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'seria-a'])
        @fixtures_sp_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'laliga'])
        @fixtures_ge_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'bundesliga'])
        @fixtures_cl_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'chempions-league'])
    end

    def policy
        set_meta_tags noindex: true,
                      title: 'Правила пользования',
                      site: 'nafootball.com',
                      reverse: true
    end

    def search
        if params[:query].strip != ""
            @data = ThinkingSphinx.search(params[:query], field_weights: {title: 20, name: 10}, page: params[:page], per_page: 16, :classes => [Article, Video])
        else
            flash[:alert] = 'Вы ничего не ввели в поле поиска'
            redirect_to :back
        end
    end

    def match
        @time =     params[:time].split('-')
        @hometeam = params[:hometeam].split('-').join(' ')
        @awayteam = params[:awayteam].split('-').join(' ')
        @match = Match.where("extract(year from date) = ? and extract(month from date) = ? and extract(day from date) = ? and \"homeTeamName\" = ? and \"awayTeamName\" = ?", @time[0].to_i, @time[1].to_i, @time[2].to_i, @hometeam, @awayteam).last
        @fixtures_first_team = Match.order('date DESC').where("date BETWEEN ? AND ? and (\"homeTeamName\" = ? or \"awayTeamName\" = ?)", Time.zone.now-60.days, Time.current-2.hour, @hometeam, @hometeam).first(3)
        @fixtures_second_team = Match.order('date DESC').where("date BETWEEN ? AND ? and (\"homeTeamName\" = ? or \"awayTeamName\" = ?)", Time.zone.now-60.days, Time.current-2.hour, @awayteam, @awayteam).first(3)
    end
    
end
