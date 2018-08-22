Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"
  resource :cart

  resources :products, only: [:index, :show] do
  	post :add_to_cart, on: :member
  end

  resources :orders, only: [:index]

  namespace :admin do
  	resources :products
  	resources :order
  	root "products#index"
  end

end
