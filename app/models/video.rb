class Video < ActiveRecord::Base
    has_many :taggings, dependent: :destroy
    has_many :tags, through: :taggings
    has_many :comments, as: :commentable, dependent: :destroy
    mount_uploader :picture, VideoUploader
    validates :title, presence: true
    validates :code, presence: true
    validates :league, presence: true
    validates :image_alt, presence: true
    validates :time, presence: true

    accepts_nested_attributes_for :tags
    accepts_nested_attributes_for :taggings

    extend FriendlyId
    friendly_id :title, use: [:slugged, :history, :finders]
    def should_generate_new_friendly_id?
        slug.blank? || title_changed?
    end

    scope :all_except, ->(video) { where.not(id: video) }

    if Rails.env.production?
        after_create :fb_page_post 
        # after_create :twitter_post
        def fb_page_post
            if Video.last.category == 'full'
                page_graph = Koala::Facebook::API.new('EAAHzbwanpNkBAF3pDmYuU3cRn7equ2QkpOISwdFdRCJXHsCp7FZBDPwWgGjinUfguvcZB6hxhkWbEjCZBdJkczWfAE1NH7BzZC8ZAzxR7slvtITsoYonzaLrdcpgsfZBnw3ZBnXXq3ZARCTZBQUHdNF3nNZCU9FfW2I8gZD')
                page_graph.put_wall_post(self.title , {
                "link" => "http://nafootball.com/#{Rails.application.routes.url_helpers.league_video_path(self.league, self)}",
                "name" => self.title,
                "picture" => "http://nafootball.com/#{Video.last.picture.url}"
                })
            end
        end
        # def twitter_post
        #     begin
        #     client = Twitter::REST::Client.new do |config|
        #         config.consumer_key        = "NzO3p13LKOVQkBoU0r5y5Air0"
        #         config.consumer_secret     = "M1LQAA08SpjDGRvWVWESUYHQhAsFZ2hUKfFQxevIqGebIJywOG"
        #         config.access_token="3547350743-xwu8igclJuxppTG5mL4clGPnIGvuRkNfFrkoYq4"
        #         config.access_token_secret="qUyd8S3721AXt0h2JRe58itaYY2UeNeJWurLt6Al6waKY"
        #     end
        #     client.update_with_media("http://nafootball.com #{Video.last.title}"[0...120], open("http://nafootball.com#{Video.last.picture.url}"))
        #     rescue Exception => exc
        #     @message = exc.message
        #     end
        # end
    end

end
