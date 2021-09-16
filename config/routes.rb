Rails.application.routes.draw do
  resources :order_items
  resources :items, only: [:update, :destroy]
  resources :orders
  resources :vendors do
    resources :items, only: [:index, :show]
  end
  resources :customers


  #signing customer or vendor in 
  get '/login', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
