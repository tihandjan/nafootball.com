class NewsController < ApplicationController
    
    def index
        @articles = Article.paginate(page: params[:page], per_page: 7).order('created_at DESC').where(league: params[:league_id], category: 'news')

        if params[:league_id] == 'apl'
            @h1 = "Привет я буду h1 для #{params[:league_id]}"
            @active = 'apl-active'
        elsif params[:league_id] == 'seria-a'
            @h1 = "Привет я буду h1 для #{params[:league_id]}"
            @active = 'seria-a-active'
        elsif params[:league_id] == 'bundesliga'
            @h1 = "Привет я буду h1 для #{params[:league_id]}"
            @active = 'bundesliga-active'
        elsif params[:league_id] == 'laliga'
            @h1 = "Привет я буду h1 для #{params[:league_id]}"
            @active = 'laliga-active'
        elsif params[:league_id] == 'chempions-league'
            @h1 = "Привет я буду h1 для #{params[:league_id]}"
            @active = 'chempions-league-active'
        elsif params[:league_id] == 'all'
            @articles = Article.paginate(page: params[:page], per_page: 7).order('created_at DESC').where(category: 'news')
            @active = 'rest-active'
            @h1 = "Привет я буду h1 для всех новостей"
        end
    end

end