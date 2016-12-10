require "rails_helper"

feature "show page" do
   scenario "Article created by admin, user see at show page" do
      FactoryGirl.create(:news)
      FactoryGirl.create(:video)
      
      visit root_path
      visit article_path(Article.last)
      
      expect(page).to have_title(Article.last.title)
   end
end