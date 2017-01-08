class TeamsController < ApplicationController
    include MainHelper

    def index
        redirect_to root_path    
    end

    def show
        @team = Team.find(params[:id])
        @league = @team.league
        @players = @team.players
        @teams = Team.all
        @news = Article.order('created_at DESC').where('(team = ? or team_second = ?) and category = ?', @team.name, @team.name, 'news').paginate(page: params[:page], per_page: 5)
        @articles = Article.order('created_at DESC').where('(team = ? or team_second = ?) and category = ?', @team.name, @team.name, 'articles').paginate(page: params[:page], per_page: 5)
        @videos = Video.order('created_at DESC').where('team_first = ? or team_second = ?', @team.name, @team.name).paginate(page: params[:page], per_page: 5)
        if @team.league == 'ukraine' || @team.league == 'russian'
            @table_data = Table.where(league: @team.league).order(points: :desc)
        else
            @table_data = Table.where(league: @team.league).order(id: :asc)
        end
        @fixtures_prev = Match.order('date DESC').where("date BETWEEN ? AND ? and (\"homeTeamName\" = ? or \"awayTeamName\" = ?)", Time.zone.now-60.days, Time.current-2.hour, @team.name, @team.name).first(5)
        @fixtures_next = Match.order('date').where("date BETWEEN ? AND ? and (\"homeTeamName\" = ? or \"awayTeamName\" = ?)", Time.current+3.hour, Time.zone.now+60.days, @team.name, @team.name).first(5)
        @is_not_index = true
        set_meta_tags title: "Футбольный клуб #{full_team_translater(@team.name)}",
                      site: 'nafootball.com',
                      reverse: true,
                      description: "Футбольный клуб #{full_team_translater(@team.name)}, последние новости, расписание матчей, результаты, турнирное положение, состав команды, видео, рыночная стоимость на nafootball.com",
                      keywords: 'Футбол, новости, игроки, голы, видео, повторы, таблица, клуб, стоимость',
                      canonical: team_url(@team)
    end

end