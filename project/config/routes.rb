Rails.application.routes.draw do

  
  get 'users/index'
  get 'users/create'
  get 'users/destroy'
  get 'users/update'
  get 'users/show'
  get 'users/edit'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
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
  
  resources :post_images
  resources :posts do
    resources :comments
    resources :comment_images
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
  

  post '/sign_up' => 'registration#create', as: :sign_up
  post '/new_post' => 'newest#create', as: :my_new_post
  post '/update_post' => 'newest#update', as: :my_update_post

  get '/my_wall' => 'posts#wall', as: :my_wall

  get '/report' => 'posts#report', as: :report
  
  get '/searched_users' => 'registred_users#search_user', as: :search_user
  

  #delete '/users/sign_out' => 'users/sessions#destroy', as: :destroy_user_session


end
    