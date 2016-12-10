require 'rails_helper'

RSpec.describe VideosController, type: :controller do
    
    before(:each) do
        @video = FactoryGirl.create(:video)
    end
    describe "GET show" do
        
       it "http success" do
           get :show, id: @video
           expect(response).to have_http_status(:success)
       end
       it "renders show template" do
           get :show, id: @video
           expect(response).to render_template(:show)
       end
       it "assigns new video to video variable" do
           get :show, id: @video
           expect(assigns(:video)).to eq(@video)
       end
       it "assigns news to news variable" do
          news = FactoryGirl.create(:news)
          get :show, id: @video
          expect(assigns(:news)).to match_array([news])
       end
    end
    
    describe "GET index" do
        it "http success" do
            get :index
            expect(response).to have_http_status(:success)
        end
        it "renders index template" do
            get :index
            expect(response).to render_template(:index)
        end
        it "assigns videos to videos variable" do
            get :index
            expect(assigns(:videos)).to match_array([@video])
        end
        it "assigns news to news variable" do
            news = FactoryGirl.create(:news)
            get :index
            expect(assigns(:news)).to match_array([news])
        end
    end
    
end