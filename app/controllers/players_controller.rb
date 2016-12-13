class PlayersController < ApplicationController
    include PlayersHelper
    include MainHelper

    def index
        redirect_to root_path
    end

    def show
        @player = Player.find(params[:id])
        @team = @player.team
        @league = @team.league
        @teams = Team.all
        @players = @team.players
        @news = Article.order('created_at DESC').where('team = ? or team_second = ?', @team.name, @team.name).paginate(page: params[:page], per_page: 5)
        @is_not_index = true
        set_meta_tags title: "#{player_translater(@player.name.split("\n")[0])} биография, новости, статистика",
                      site: 'nafootball.com',
                      reverse: true,
                      description: "Просмотреть профиль игрока #{full_team_translater(@team.name)} #{player_translater(@player.name.split("\n")[0])}, включая статистику и рыночную стоимость от nafootball.com",
                      keywords: 'Футбол, новости, игроки, голы, видео, повторы, таблица, клуб, стоимость',
                      canonical: player_url(@player)
    end
end