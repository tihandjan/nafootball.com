require 'rails_helper'

RSpec.describe MainController, type: :controller do
    describe "GET index" do
        it "renders index template" do
           get :index
           
           expect(response).to render_template(:index)
        end
        
        it "articles/news variables consists array of article" do
            news1 =  FactoryGirl.create(:news) 
            articles = FactoryGirl.create(:article) 
            get :index
           
           expect(assigns(:news)).to match_array([news1])
           expect(assigns(:articles)).to match_array([articles])
        end
    end
    
end
