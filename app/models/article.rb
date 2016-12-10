class Article < ActiveRecord::Base
    has_many :pictures, dependent: :destroy
    has_many :taggings
    has_many :tags, through: :taggings
    has_many :comments, as: :commentable
    validates :title, presence: true, length: { minimum: 10, maximum: 150 }
    validates :summary, presence: true, length: { minimum: 10, maximum: 250 }
    validates :description, presence: true, length: { minimum: 10, maximum: 10000 }
    validates :picture, presence: true
    validates :league, presence: true
    mount_uploader :picture, PictureUploader
    accepts_nested_attributes_for :pictures
    accepts_nested_attributes_for :tags
    accepts_nested_attributes_for :taggings

    after_create :fb_page_post
    
    
    
    scope :all_except, ->(article) { where.not(id: article) }
    
    scope :my_team_news, ->(cookie) { order('created_at DESC').where(team: cookie).first(4) }
    
    
    def to_param
      "#{id} #{title}".parameterize
    end 

    def fb_page_post
        # oauth = Koala::Facebook::OAuth.new('549133155280089', '0977f0831e25d61eddbe2bd3b5227896')
        # long_live_access_token = oauth.exchange_access_token('EAAHzbwanpNkBAC2atjjI4XZC3ColFcOEyq4nSeuIwtRLuFdmBoPUo25VEZBDEZAGKOdKZAI6AECBrtvZBY8cbBJUzIgcb622NikW3nlORHykD1lbcdOlxLD8fYyy9ZCZAcY7ZBBdEfTtmFZBeg7SpcwthBOuZCZBMd75o7N1fZA0OHeyyQZDZD')
        # graph = Koala::Facebook::API.new(long_live_access_token)
        # page_access_token = graph.get_page_access_token('1411234032511437')

        # only this part right
        page_graph = Koala::Facebook::API.new('EAAHzbwanpNkBAF3pDmYuU3cRn7equ2QkpOISwdFdRCJXHsCp7FZBDPwWgGjinUfguvcZB6hxhkWbEjCZBdJkczWfAE1NH7BzZC8ZAzxR7slvtITsoYonzaLrdcpgsfZBnw3ZBnXXq3ZARCTZBQUHdNF3nNZCU9FfW2I8gZD')
        page_graph.put_wall_post((self.title[0...80]) , {
        "link" => "http://ueroliga.herokuapp.com/#{Rails.application.routes.url_helpers.league_article_path(self.league, self)}",
        "name" => (self.summary[0...120]),
        "description" => (self.description[0...100]),
        "picture" => Article.last.picture.url
        })
    end
    
end
