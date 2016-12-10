class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

    def facebook
      @user = User.find_for_facebook_oauth request.env["omniauth.auth"]
      if @user.persisted?
        flash[:notice] = "Вы успешно вошли с помощью Facebook"
        sign_in_and_redirect @user, :event => :authentication
      else
        flash[:alert] = "Что то пошло не так, попробуйте зарегистрироваться нажав на кнопку РЕГИСТРАЦИЯ В РУЧНУЮ"
        redirect_to root_path
      end
    end
    
    def google_oauth2
      @user = User.find_for_google_oauth request.env["omniauth.auth"]
      if @user.persisted?
        flash[:notice] = "Вы успешно вошли с помощью Google"
        sign_in_and_redirect @user, :event => :authentication
      else
        flash[:alert] = "Что то пошло не так, попробуйте зарегистрироваться нажав на кнопку РЕГИСТРАЦИЯ В РУЧНУЮ"
        redirect_to root_path
      end
    end

    def twitter
      @user = User.find_for_twitter_oauth request.env["omniauth.auth"]
      if @user.persisted?
        flash[:notice] = "Вы успешно вошли с помощью Twitter"
        sign_in_and_redirect @user, :event => :authentication
      else
        flash[:alert] = "Что то пошло не так, попробуйте зарегистрироваться нажав на кнопку РЕГИСТРАЦИЯ В РУЧНУЮ"
        redirect_to root_path
      end
    end

    def vkontakte
      @user = User.find_for_vkontakte_oauth request.env["omniauth.auth"]
      if @user.persisted?
        flash[:notice] = "Вы успешно вошли с помощью Vkontakte"
        sign_in_and_redirect @user, :event => :authentication
      else
        flash[:alert] = "Что то пошло не так, попробуйте зарегистрироваться нажав на кнопку РЕГИСТРАЦИЯ В РУЧНУЮ"
        redirect_to root_path
      end
    end
end 
