def user_sign_in
    User.create!(email: 'test@mail.com', password: 'password', username: 'test-user-name')
    visit root_path 
    click_on 'Авторизация'
    click_on 'Войти'
    
    fill_in 'user_email', with: 'test@mail.com'
    fill_in 'user_password', with: 'password'
    find('input[name="commit"]')[0].click
end