Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'public/homes#top'
  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }
   resources :post_images, only: [:new, :create, :index, :show, :destroy]
  namespace :admin do
    root to: 'homes#top'
    get'admin/home/about' => 'homes#about'
    resources :items,only: [:new,:create,:show,:index,:edit,:update]
    resources :categories,only: [:show,:index,:edit,:update,:create]
    resources :customers,only: [:show,:index,:edit,:update]
    resources :orders,only: [:show,:update,]
    resources :order_details,only: [:update]
  end
end
