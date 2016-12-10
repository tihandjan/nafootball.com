require 'rails_helper'

feature 'main page' do
    
    before(:each) do
        FactoryGirl.create(:news)
        FactoryGirl.create(:video)
    end
    
    scenario 'main page have title' do
       visit '/'
       
       expect(page).to have_title('Английская премьер лига')
    end
    
    scenario 'user can sign_up' do
       visit root_path
       click_on 'Регистрация'
       click_on 'Зарегистрироваться вручную'
       
       fill_in 'user_username', with: 'Testname'
       fill_in 'user_email', with: 'test@mail.com'
       fill_in 'user_password', with: 'password'
       fill_in 'user_password_confirmation', with: 'password'
       
       click_on 'Зарегистрироваться'
       
       expect(current_path).to eq root_path
       expect(page).to have_content('Добро пожаловать! Вы успешно зарегистрировались.')
    end
    
    scenario 'registered user can sign in' do
       user_sign_in
       
       expect(current_path).to eq root_path
       expect(page).to have_content('Вход в систему выполнен.')
    end
    
    scenario 'registered user can edit his profile info' do 
        user_sign_in
        visit root_path
        click_on 'Профиль'
        click_on 'Редактировать'
        
        fill_in 'user_username', with: 'changed name'
        click_on 'Обновить'
        expect(page).to have_content('Профиль успешно обновлен')
        expect(User.last.username).to eq 'changed name'
    end
    
end