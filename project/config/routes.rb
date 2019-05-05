Rails.application.routes.draw do

  
  resources :system_admin_inappropriates
  resources :admin_inappropriates
  resources :user_inappropriates
  resources :system_admin_black_lists
  resources :admin_black_lists
  resources :system_admin_dumpsters
  resources :admin_dumpsters
  resources :system_admins
  resources :admins
  resources :comment_images
  resources :comments
  resources :post_images
  resources :posts
  resources :profiles
  resources :registred_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'sessions#new'

  post '/login' => 'sessions#create', as: :log_in
  delete '/log_out' => 'sessions#destroy', as: :log_out

  post '/sign_up' => 'registration#create', as: :sign_up
  post '/new_post' => 'newest#create', as: :my_new_post

  get '/my_wall' => 'mywall#new', as: :my_wall

 


end
    