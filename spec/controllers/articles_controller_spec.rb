require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      news = FactoryGirl.create(:news)
      get :show, id: news
      expect(response).to have_http_status(:success)
    end
    it "renders show template" do
        news = FactoryGirl.create(:article)
        get :show, id: news
        
        expect(response).to render_template(:show)
    end
    it "assigns article to article variable" do
        article = FactoryGirl.create(:article)
          get :show, id: article
          
          expect(assigns(:article)).to eq(article)
    end
  end
end
