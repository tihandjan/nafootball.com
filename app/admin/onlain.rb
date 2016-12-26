ActiveAdmin.register Onlain do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :sopcast, :sopcast_quality, :acestream, :acestream_quality, :video_first, :video_second, :video_third, :video_fourth, :date, :home_team, :away_team
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

    index do
        column :id
        column :home_team
        column :away_team
        column :date
        actions do |onlain|
        end
    end

    form do |f|
        inputs 'onlain' do
            input :home_team, as: :select, collection: select_team 
            input :away_team, as: :select, collection: select_team 
            label 'Дату ставить по MSK (Московское время)'
            input :date
            label 'SOPCAST, SOPCAST_QUALITY, ACESTREAM, ACESTREAM_QUALITY ПЕРЕЧИСЛЯТЬ ЧЕРЕЗ ЗАПЯТУЮ!!!'
            input :sopcast
            input :sopcast_quality
            input :acestream
            input :acestream_quality
            input :video_first
            input :video_second
            input :video_third
            input :video_fourth
        end
        actions
    end

end
