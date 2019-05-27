Rails.application.routes.draw do

  
  devise_for :users
  #devise_for :users, controllers: { sessions: 'users/sessions' }
  #devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  get 'search/create'
  get 'search/new'
  get 'search/index'
  get 'search/index'
  get 'search/new'
  get 'search/create'
  resources :black_lists
  resources :inappropriates
  resources :dumpsters
  resources :comment_images
  resources :comments
  resources :post_images
  resources :posts
  resources :profiles
  resources :registred_users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'posts#index'

  post '/login' => 'sessions#create', as: :log_in
  

  post '/sign_up' => 'registration#create', as: :sign_up
  post '/new_post' => 'newest#create', as: :my_new_post
  post '/update_post' => 'newest#update', as: :my_update_post

  get '/my_wall' => 'posts#wall', as: :my_wall

  get '/report' => 'posts#report', as: :report
  
  get '/searched_users' => 'registred_users#search_user', as: :search_user

  #delete '/users/sign_out' => 'users/sessions#destroy', as: :destroy_user_session


end
    