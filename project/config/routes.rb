Rails.application.routes.draw do
  get 'registred_users/new'
  root 'registred_users#new'
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
end
