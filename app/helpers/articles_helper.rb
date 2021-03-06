module ArticlesHelper

  def link_to_news_or_article cat
    if cat == 'article'
        if @article.league == 'world'
            link_to 'Статьи', league_articles_path('all')
        else
            link_to 'Статьи', league_articles_path(@article.league)
        end
    else
        if @article.league == 'world'
            link_to 'Новости', league_news_index_path('all')
        else
            link_to 'Новости', league_news_index_path(@article.league)
        end
    end
  end

  def index_article_active(active=nil, thisone=nil)
    if active == 'apl-active' && thisone == 'apl'
        'apl-active'
    elsif active == 'laliga-active' && thisone == 'laliga'
        'laliga-active'
    elsif active == 'bundesliga-active' && thisone == 'bundesliga'
        'bundesliga-active'  
    elsif active == 'seria-a-active' && thisone == 'seria-a'
        'seria-a-active'  
    elsif active == 'chempions-league-active' && thisone == 'chempions-league'
        'chempions-league-active'  
    elsif active == 'rest-active' && thisone == 'rest'
        'rest-active'
    elsif active == 'ukraine-active' && thisone == 'ukraine'
        'ukraine-active'
    elsif active == 'russian-active' && thisone == 'russian'
        'russian-active'
    end    
  end

end
