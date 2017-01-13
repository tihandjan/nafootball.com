class MainController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_onlain_fixtures, only: [:index, :onlain]
    def index
        if  request.location && request.location.country == 'Ukraine'
            @main_news = Article.order('created_at DESC').where(category: 'news', main: true).where.not(league: 'russian').first(4)
            @news = Article.order('created_at DESC').where(category: 'news').where.not(league: 'russian').all_except(@main_news.map {|a| a.id}).first(20)
            @articles = Article.order('created_at DESC').where(category: 'article').where.not(league: 'russian').first(4)
            @videos = Video.order('created_at DESC').where(category: 'full').where.not(league: 'russian').first(5)
            @videos_short = Video.order('created_at DESC').where(category: 'overview').where.not(league: 'russian').first(6)
        elsif request.location &&  request.location.country == 'Russia'
            @main_news = Article.order('created_at DESC').where(category: 'news', main: true).where.not(league: 'ukraine').first(4)
            @news = Article.order('created_at DESC').where(category: 'news').where.not(league: 'ukraine').all_except(@main_news.map {|a| a.id}).first(20)
            @articles = Article.order('created_at DESC').where(category: 'article').where.not(league: 'ukraine').first(4)
            @videos = Video.order('created_at DESC').where(category: 'full').where.not(league: 'ukraine').first(5)
            @videos_short = Video.order('created_at DESC').where(category: 'overview').where.not(league: 'ukraine').first(6)
        else
            @main_news = Article.order('created_at DESC').where(category: 'news', main: true).first(4)
            @news = Article.order('created_at DESC').where(category: 'news').all_except(@main_news.map {|a| a.id}).first(20)
            @articles = Article.order('created_at DESC').where(category: 'article').first(4)
            @videos = Video.order('created_at DESC').where(category: 'full').first(5)
            @videos_short = Video.order('created_at DESC').where(category: 'overview').first(6)
        end
        @table_ge = Table.where(league: 'bundesliga').order(points: :desc)
        @table_it = Table.where(league: 'seria-a').order(points: :desc)
        @table_ua = Table.where(league: 'ukraine').order(points: :desc)
        @table_ru = Table.where(league: 'russian').order(points: :desc)
        @table_sp = Table.where(league: 'laliga').order(points: :desc)
        @table_en = Table.where(league: 'apl').order(points: :desc)
        @table_cl_a = Table.where(league: 'chempions-league', group: 'A')
        @table_cl_b = Table.where(league: 'chempions-league', group: 'B')
        @table_cl_c = Table.where(league: 'chempions-league', group: 'C')
        @table_cl_d = Table.where(league: 'chempions-league', group: 'D')
        @table_cl_e = Table.where(league: 'chempions-league', group: 'E')
        @table_cl_f = Table.where(league: 'chempions-league', group: 'F')
        @table_cl_g = Table.where(league: 'chempions-league', group: 'G')
        @table_cl_h = Table.where(league: 'chempions-league', group: 'H')
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
        @fixtures_en = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'apl']).order('date')
        @fixtures_ua = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'ukraine']).order('date')
        @fixtures_ru = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'russian']).order('date')
        @fixtures_it = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'seria-a']).order('date')
        @fixtures_sp = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'laliga']).order('date')
        @fixtures_ge = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'bundesliga']).order('date')
        @fixtures_cl = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'chempions-league']).order('date')
        @fixtures_cup = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'cup']).order('date')
        @fixtures_euro_liga = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'euro-league']).order('date')

        @fixtures_en_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days-1.hour, 'apl']).order('date')
        @fixtures_ua_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days-1.hour, 'ukraine']).order('date')
        @fixtures_ru_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days-1.hour, 'russian']).order('date')
        @fixtures_it_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days-1.hour, 'seria-a']).order('date')
        @fixtures_sp_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days-1.hour, 'laliga']).order('date')
        @fixtures_ge_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days-1.hour, 'bundesliga']).order('date')
        @fixtures_cl_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days-1.hour, 'chempions-league']).order('date')
        @fixtures_cup_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days-1.hour, 'cup']).order('date')
        @fixtures_euro_liga_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days-1.hour, 'euro-league']).order('date')

        @fixtures_en_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'apl']).order('date')
        @fixtures_ua_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'ukraine']).order('date')
        @fixtures_ru_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'russian']).order('date')
        @fixtures_it_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'seria-a']).order('date')
        @fixtures_sp_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'laliga']).order('date')
        @fixtures_ge_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'bundesliga']).order('date')
        @fixtures_cl_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'chempions-league']).order('date')
        @fixtures_cup_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'cup']).order('date')
        @fixtures_euro_liga_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'euro-league']).order('date')
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

    include MainHelper
    def match
        @time =     params[:time].split('-')
        @hometeam = params[:hometeam].split('-').join(' ')
        @awayteam = params[:awayteam].split('-').join(' ')
        @match = Match.where("extract(year from date) = ? and extract(month from date) = ? and extract(day from date) = ? and \"homeTeamName\" = ? and \"awayTeamName\" = ?", @time[0].to_i, @time[1].to_i, @time[2].to_i, @hometeam, @awayteam).last
        @fixtures_first_team = Match.order('date DESC').where("date BETWEEN ? AND ? and (\"homeTeamName\" = ? or \"awayTeamName\" = ?)", Time.zone.now-60.days, Time.current-2.hour, @hometeam, @hometeam).first(3)
        @fixtures_second_team = Match.order('date DESC').where("date BETWEEN ? AND ? and (\"homeTeamName\" = ? or \"awayTeamName\" = ?)", Time.zone.now-60.days, Time.current-2.hour, @awayteam, @awayteam).first(3)
        @onlain = Onlain.find_by(date: @match.date, home_team: @hometeam, away_team: @awayteam)
        @teams = Team.all
        set_meta_tags title: "#{full_team_translater @hometeam} #{full_team_translater @awayteam} смотреть онлайн, прямая трансляция матча #{params[:time]}",
                      site: 'nafootball.com',
                      reverse: true,
                      description: "Смотреть онлайн прямую видео трансляцию матча #{full_team_translater @hometeam} #{full_team_translater @awayteam} в хорошем качестве FULL HD на nafootball.com",
                      keywords: 'футбол, онлайн, таблица, результаты, расписание, новости, трансферы, голы, видео'
    end
    
end
