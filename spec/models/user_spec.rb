require "rails_helper"

describe "Facebook auth" do
    
    context "user already exist" do
        it "doesn't create new user in DB" do
           user = FactoryGirl.create(:user)
           auth = OmniAuth::AuthHash.new(uid: "9379992", provider: "facebook", info: {email: user.email}, extra: {raw_info: {name: "Igor"}})
           
           expect{User.find_for_facebook_oauth(auth)}.to_not change(User, :count)
           
        end
        it "add uid and provider if user has only email" do
            FactoryGirl.attributes_for(:user, email: "test@test.com")
            auth = OmniAuth::AuthHash.new(uid: "9379992", provider: "facebook", info: {email: "test@test.com"}, extra: {raw_info: {name: "Igor"}})
            User.find_for_facebook_oauth(auth)

            expect(User.last.uid).to eq auth.uid
            expect(User.last.provider).to eq auth.provider 
        end
        it "returns the user" do
           user = FactoryGirl.create(:user)
           auth = OmniAuth::AuthHash.new(uid: "9379992", provider: "facebook", info: {email: user.email}, extra: {raw_info: {name: "Igor"}})
           user = User.find_for_facebook_oauth(auth)
           
           expect(user).to be_a(User) 
        end
    end
    context "user doesn't exist" do
        let(:auth) { OmniAuth::AuthHash.new(uid: "9379992", provider: "facebook", info: {email: "test@test.com"}, extra: {raw_info: {name: "Igor"}})}
        it "creates new user" do
           
           expect{User.find_for_facebook_oauth(auth)}.to change(User, :count).by(1)
        end
        
        it "returns new user" do
            user = User.find_for_facebook_oauth(auth)
           expect(user).to be_a(User)
        end
        it "fill in user's email" do
            user = User.find_for_facebook_oauth(auth)
            
            expect(user.email).to eq auth.info.email
        end
        it "create authorization with provider and uid" do 
            User.find_for_facebook_oauth(auth)
            
            expect(User.last.uid).to eq auth.uid
            expect(User.last.provider).to eq auth.provider 
        end
    end
    
end

describe "Google auth" do
    context "user already exist" do
        it "doesn't create new user in DB" do
           user = FactoryGirl.create(:user)
           auth = OmniAuth::AuthHash.new(uid: "9379992", provider: "google", info: {email: user.email}, extra: {raw_info: {name: "Igor"}})
           
           expect{User.find_for_google_oauth(auth)}.to_not change(User, :count)
           
        end
        it "add uid and provider if user has only email" do
            FactoryGirl.attributes_for(:user, email: "test@test.com")
            auth = OmniAuth::AuthHash.new(uid: "9379992", provider: "google", info: {email: "test@test.com"}, extra: {raw_info: {name: "Igor"}})
            User.find_for_google_oauth(auth)

            expect(User.last.uid).to eq auth.uid
            expect(User.last.provider).to eq auth.provider 
        end
        it "returns the user" do
           user = FactoryGirl.create(:user)
           auth = OmniAuth::AuthHash.new(uid: "9379992", provider: "google", info: {email: user.email}, extra: {raw_info: {name: "Igor"}})
           user = User.find_for_google_oauth(auth)
           
           expect(user).to be_a(User) 
        end
    end
    context "user doesn't exist" do
        let(:auth) { OmniAuth::AuthHash.new(uid: "9379992", provider: "google", info: {email: "test@test.com"}, extra: {raw_info: {name: "Igor"}})}
        it "creates new user" do
           
           expect{User.find_for_google_oauth(auth)}.to change(User, :count).by(1)
        end
        
        it "returns new user" do
            user = User.find_for_google_oauth(auth)
           expect(user).to be_a(User)
        end
        it "fill in user's email" do
            user = User.find_for_google_oauth(auth)
            
            expect(user.email).to eq auth.info.email
        end
        it "create authorization with provider and uid" do 
            User.find_for_google_oauth(auth)
            
            expect(User.last.uid).to eq auth.uid
            expect(User.last.provider).to eq auth.provider 
        end
    end
end