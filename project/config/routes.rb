Rails.application.routes.draw do

  resources :follows
  #get 'users/create'
  #get 'users/update'
  #get 'users/destroy'
  #get 'users/index'
  #get 'users/show'
  #get 'users/edit'
  
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  #devise_for :users, controllers: { sessions: 'users/sessions' }
  #devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  get 'search/create'
  get 'search/new'
  get 'search/index'
  get 'search/index'
  get 'search/new'
  get 'search/create'

  resources :post_images
  resources :posts do
    resources :comments
    resources :comment_images
    resources :follows
    member do
      put "like" => "posts#upvote"
      put "unlike" => "posts#downvote"
    end
  end
  resources :profiles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'posts#index'

  post '/login' => 'sessions#create', as: :log_in
  get '/black_list' => 'users#black_list', as: :black_list
  
  post '/follow' => 'follows#create', as: :create_follow
  post '/sign_up' => 'registration#create', as: :sign_up
  post '/new_post' => 'newest#create', as: :my_new_post
  post '/update_post' => 'newest#update', as: :my_update_post

  post '/new_user' => 'new_user#create', as: :my_new_user

  get '/my_wall' => 'posts#wall', as: :my_wall

  get '/report' => 'posts#report', as: :report
  
  get '/searched_users' => 'registred_users#search_user', as: :search_user
  get '/search' => 'search#index', as: :search  

  #delete '/users/sign_out' => 'users/sessions#destroy', as: :destroy_user_session


end
    