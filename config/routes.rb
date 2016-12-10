Rails.application.routes.draw do

  root 'main#index'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # authentication start
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  namespace :users do
    get 'omniauth_callbacks/facebook'
    get 'omniauth_callbacks/google_oauth2'
    get 'omniauth_callbacks/twitter'
    get 'omniauth_callbacks/vkontakte'
  end
  # authentication end

  resources :users, only: [:edit, :update]
  resources :leagues, only: [:show, :index] do
    member do
      get 'table'
      get 'fixtures'
      get 'results'
    end
    resources :news, only: [:index]
    resources :articles, only: [:show, :index] do
      resources :comments, only: [:create]
    end
    resources :videos, only: [:show, :index] do
      resources :comments, only:[:create]
    end
  end
  resources :comments, only: [:create] do
    resources :comments, only: [:create]
    member do
      put 'like' => 'comments#upvote'
      put 'unlike' => 'comments#downvote'
    end
  end

  resources :teams, only: [:show, :index] do
  end
  resources :players, only: [:show, :index]

  resources :tags, only: [:show, :index] do
    get 'videos' => 'tags#video_tag', on: :member
  end

  # single pages and actions start
  get 'policy' => 'main#policy', as: :policy
  post 'onlain' => 'main#onlain', as: :onlain
  post 'my_team' => 'main#change_my_team', as: :change_my_team
  post 'feedback' => 'feedback#create', as: :feedbacks
  # single pages and actions end

end
