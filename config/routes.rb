Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get'admin/home/top' => 'homes#top'
  get'admin/home/about' => 'homes#about'
  resources :items,only: [:new,:create,:show,:index,:edit,:update]
  resources :categories,only: [:show,:index,:edit,:update,:create] 
  resources :customers,only: [:show,:index,:edit,:update] 
  resources :orders,only: [:show,:update,]
  resources :order_details,only: [:update] 
end
