def user_sign_in
    User.create!(email: 'test@mail.com', password: 'password', username: 'test-user-name')
    visit root_path 
    click_on 'Войти'
    click_on 'Войти вручную'
    
    fill_in 'user_email', with: 'test@mail.com'
    fill_in 'user_password', with: 'password'
    find('input[name="commit"]').click
end