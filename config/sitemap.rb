# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.nafootball.com"

SitemapGenerator::Sitemap.create do

   # Defined priorities
  HIGHEST = 1 
  HIGH = 0.9 
  ABOVE_AVERAGE = 0.7
  MEDIUM = 0.5
  BELOW_AVERAGE = 0.3
  LOW = 0.2

  add root_path, priority: HIGHEST
  ['apl', 'laliga', 'bundesliga', 'seria-a', 'chempions-league'].each do |league|
    add league_path(league), priority: HIGHEST
    add fixtures_league_path(league), priority: HIGH
    add results_league_path(league), priority: HIGH
    add table_league_path(league), priority: HIGH
    add league_videos_path(league), priority: ABOVE_AVERAGE
    add league_news_index_path(league), priority: ABOVE_AVERAGE
    add league_articles_path(league), priority: ABOVE_AVERAGE
  end
  add league_videos_path('all'), priority: ABOVE_AVERAGE
  add league_news_index_path('all'), priority: ABOVE_AVERAGE
  add league_articles_path('all'), priority: ABOVE_AVERAGE

  Article.find_each do |article|
    add league_article_path(article.league, article), lastmod: article.updated_at, changefreq: 'daily', priority: HIGH
    article.tags.each do |tag|
      add tag_path(tag), lastmod: tag.updated_at, priority: MEDIUM, changefreq: 'daily'
    end
  end

  Video.find_each do |video|
    add league_video_path(video.league, video), lastmod: video.updated_at, changefreq: 'daily', priority: HIGH
    video.tags.each do |tag|
      add videos_tag_path(tag), lastmod: tag.updated_at, priority: MEDIUM, changefreq: 'daily'
    end
  end

  Team.find_each do |team|
    add team_path(team), lastmod: team.updated_at, priority: HIGH
  end

  Player.find_each do |player|
    add player_path(player), lastmod: player.updated_at, priority: ABOVE_AVERAGE
  end






  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
