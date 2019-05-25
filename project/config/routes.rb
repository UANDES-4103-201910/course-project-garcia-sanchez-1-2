Rails.application.routes.draw do

  
  resources :black_lists
  resources :inappropriates
  resources :dumpsters
  resources :comment_images
  resources :comments
  resources :post_images
  resources :posts
  resources :profiles
  resources :registred_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'sessions#new'

  post '/login' => 'sessions#create', as: :log_in
  get  '/log_out' => 'sessions#destroy', as: :log_out

  post '/sign_up' => 'registration#create', as: :sign_up
  post '/new_post' => 'newest#create', as: :my_new_post
  post '/update_post' => 'newest#update', as: :my_update_post

  get '/my_wall' => 'posts#wall', as: :my_wall

  get '/report' => 'posts#report', as: :report
  
  get '/searched_users' => 'registred_users#search_user', as: :search_user


end
    