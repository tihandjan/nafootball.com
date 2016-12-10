ActiveAdmin.register Article do


permit_params :league, :category, :title, :summary, :description, :picture, :source, :team, pictures_attributes: [:picture, :description], tags_attributes: [:name], taggings_attributes: [:article_id, :tag_id]

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
          input :category, as: :select, collection: ['news', 'article'], selected: 'news'
          input :league, as: :select, collection: ['apl', 'seria-a', 'bundesliga', 'laliga', 'chempions-league']
          input :team, as: :select, collection: select_team 
          input :picture, as: :file
          input :title
          input :summary
          input :description
        end
        inputs 'Добавить больше фото и контента' do
            f.has_many :pictures, new_record: 'добавить фото и контент' do |picture|
              picture.input :picture, as: :file
              picture.input :description
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
