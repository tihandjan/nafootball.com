class LeaguesController < ApplicationController

  before_action :set_games_table_data
  before_action :set_onlain_fixtures, only: [:show]

  def index
    redirect_to root_path
  end

  def show
    @news = Article.order('created_at DESC').where(category: 'news', league: params[:id]).first(20)
    @articles = Article.order('created_at DESC').where(category: 'article', league: params[:id]).first(2)
    @videos = Video.order('created_at DESC').where(league: params[:id]).first(5)
    @league = params[:id]
    if params[:id] == 'seria-a'
      @table_data = Table.where(league: params[:id])
      @table_name = 'Привет h5 Таблица Серия А'
      @h2 = 'Привет я h2'
      @h4 = 'Привет я h4'
      render 'shared/index_league'
    elsif params[:id] == 'bundesliga'
      @table_data = Table.where(league: params[:id])
      @table_name = 'Привет h5 Таблица Бундеслиги'
      @h2 = 'Привет я h2'
      @h4 = 'Привет я h4'
      render 'shared/index_league'
    elsif params[:id] == 'laliga'
      @table_data = Table.where(league: params[:id])
      @table_name = 'Привет h5 Таблица Ла Лиги'
      @h2 = 'Привет я h2'
      @h4 = 'Привет я h4'
      render 'shared/index_league'
    elsif params[:id] == 'chempions-league'
      @table_data = Table.where(league: params[:id])
      @table_name = 'Привет h5 Таблица Лиги Чемпионов'
      @h2 = 'Привет я h2'
      @h4 = 'Привет я h4'
      render 'shared/index_league'
    elsif params[:id] == 'apl'
      @table_data = Table.where(league: params[:id])
      @table_name = 'Привет h5 Таблица Английской Премьер Лиги'
      @h2 = 'Привет я h2'
      @h4 = 'Привет я h4'
      render 'shared/index_league'
    else
      redirect_to root_path
    end
  end

  def table
    @news = Article.order('created_at DESC').where(category: 'news', league: params[:id]).first(12)
    @league = params[:id]

    if params[:id] == 'chempions-league'
      @table = Table.where(league: params[:id])
    elsif params[:id] == 'apl' || params[:id] == 'laliga' || params[:id] == 'bundesliga' || params[:id] == 'seria-a'
      @table = Table.where(league: params[:id])
    else
      redirect_to root_path
    end
  end

  def fixtures
    @news = Article.order('created_at DESC').where(category: 'news', league: params[:id]).first(20)
    @fixtures = Match.order('date').where(['date > ? and league = ?', Time.current, params[:id]])
    @league = params[:id]
    if params[:id] == 'seria-a'
      @h2 = 'Италия. Расписание матчей'
    elsif params[:id] == 'bundesliga'
      @h2 = 'Германия. Расписание матчей'
    elsif params[:id] == 'laliga'
      @h2 = 'Испания. Расписание матчей'
    elsif params[:id] == 'chempions-league'
      @h2 = 'Лига Чемпионов. Расписание матчей'
    elsif params[:id] == 'apl'
      @h2 = 'Англия. Расписание матчей'
    end
  end

  def results
    @news = Article.order('created_at DESC').where(category: 'news', league: params[:id]).first(20)
    @fixtures = Match.order('date DESC').where(['date < ? and league = ?', Time.current-2.hour, params[:id]])
    @league = params[:id]
    if params[:id] == 'seria-a'
      @h2 = 'Италия. Результаты матчей'
    elsif params[:id] == 'bundesliga'
      @h2 = 'Германия. Результаты матчей'
    elsif params[:id] == 'laliga'
      @h2 = 'Испания. Результаты матчей'
    elsif params[:id] == 'chempions-league'
      @h2 = 'Лига Чемпионов. Результаты матчей'
    elsif params[:id] == 'apl'
      @h2 = 'Англия. Результаты матчей'
    end
  end

  def set_games_table_data
    if Delayed::Job.count == 0
        Match.delay.set_games
        Table.delay.set_table_data
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

end