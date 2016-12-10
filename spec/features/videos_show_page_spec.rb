require 'rails_helper'

feature 'show page' do
    
    before(:each) do
       @video = FactoryGirl.create(:video)
       FactoryGirl.create(:news) 
    end
    scenario 'video show page has title' do
       visit root_path
       visit video_path(@video)
       
       expect(page).to have_title(@video.title)
    end
    
    scenario 'user can see all videos on index page' do
        visit root_path
        visit video_path(@video)
        visit videos_path
        
        expect(page).to have_title('Смотреть записи матчей английской премьер лиги в повторе')
    end
    
end