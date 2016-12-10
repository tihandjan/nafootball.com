class Video < ActiveRecord::Base
    has_many :taggings
    has_many :tags, through: :taggings
    has_many :comments, as: :commentable
    mount_uploader :picture, PictureUploader
    validates :title, presence: true
    validates :code, presence: true
    validates :league, presence: true
    validates :picture, presence: true

    accepts_nested_attributes_for :tags
    accepts_nested_attributes_for :taggings

    # after_create :fb_page_post
    
    def to_param
      "#{id} #{title}".parameterize
    end

    scope :all_except, ->(video) { where.not(id: video) }

    # def fb_page_post
    #         # oauth = Koala::Facebook::OAuth.new('549133155280089', '0977f0831e25d61eddbe2bd3b5227896')
    #         # long_live_access_token = oauth.exchange_access_token('EAAHzbwanpNkBAC2atjjI4XZC3ColFcOEyq4nSeuIwtRLuFdmBoPUo25VEZBDEZAGKOdKZAI6AECBrtvZBY8cbBJUzIgcb622NikW3nlORHykD1lbcdOlxLD8fYyy9ZCZAcY7ZBBdEfTtmFZBeg7SpcwthBOuZCZBMd75o7N1fZA0OHeyyQZDZD')
    #         # graph = Koala::Facebook::API.new(long_live_access_token)
    #         # page_access_token = graph.get_page_access_token('1411234032511437')

    #     # only this part right
    #     page_graph = Koala::Facebook::API.new('EAAHzbwanpNkBAF3pDmYuU3cRn7equ2QkpOISwdFdRCJXHsCp7FZBDPwWgGjinUfguvcZB6hxhkWbEjCZBdJkczWfAE1NH7BzZC8ZAzxR7slvtITsoYonzaLrdcpgsfZBnw3ZBnXXq3ZARCTZBQUHdNF3nNZCU9FfW2I8gZD')
    #     page_graph.put_wall_post(self.title , {
    #     "link" => "http://ueroliga.herokuapp.com/#{Rails.application.routes.url_helpers.league_video_path(self.league, self)}",
    #     "name" => self.title,
    #     "picture" => Video.last.picture.url,
    #     })
    # end
end
