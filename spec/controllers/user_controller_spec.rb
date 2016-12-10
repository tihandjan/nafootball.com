require 'rails_helper'


RSpec.describe UsersController, type: :controller do
    
    let(:user) {FactoryGirl.create(:user)}
    describe "GET edit" do
        it "user var has particular user" do
            
            get :edit, id: user
            
            expect(assigns(:user)).to eq user
        end
        it "renders edit tamplate" do
            get :edit, id: user
            
            expect(response).to render_template(:edit)
        end
    end
    
    describe "PUT update" do
       it "username field has new value" do
           put :update, id: user, user: FactoryGirl.attributes_for(:user, username: 'another user-name')
           
           expect(user.username).to eq(user.username)
           expect(response).to redirect_to root_path
       end
    end
    
end