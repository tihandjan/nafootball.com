ActiveAdmin.register Article do


permit_params :league, :category, :title, :summary, :description, :picture, :source, :image_alt, :main, :team, :slug, pictures_attributes: [:picture, :description, :image_alt], tags_attributes: [:name], taggings_attributes: [:article_id, :tag_id]

    index do
        column :id
        column :league
        column :team
        column :source
        column :category
        actions do |article|
        end
    end



    form do |f|
        
        inputs 'Статьи/новости' do
          input :source
          input :main, as: :boolean
          input :category, as: :select, collection: ['news', 'article'], selected: 'news'
          input :league, as: :select, collection: ['apl', 'seria-a', 'bundesliga', 'laliga', 'chempions-league']
          input :team, as: :select, collection: select_team, :input_html => { :class => 'selectpicker', 'data-live-search' => "true" }
          input :team_second, as: :select, collection: select_team 
          input :picture, as: :file
          input :image_alt
          input :title
          input :summary
          input :description
        end
        if f.object.new_record?
            inputs 'Добавить больше фото и контента' do
                f.has_many :pictures, new_record: 'добавить фото и контент' do |picture|
                picture.input :picture, as: :file
                picture.input :image_alt
                picture.input :description
                end
            end
        end
        if f.object.new_record?
            inputs 'Выбрать теги из списка' do
                f.has_many :taggings, new_record: 'Выбрать тег' do |t|
                    t.input :tag, as: :select, collection: Tag.all
                end
            end
        end
        if f.object.new_record?
            inputs 'Добавить недостающие теги' do
                f.has_many :tags, new_record: 'Добавить новый тег' do |t|
                    t.input :name
                end
            end
        end
        actions
    end


end
