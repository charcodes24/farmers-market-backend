Rails.application.routes.draw do
  resources :order_items
  resources :items, only: [:update, :destroy, :create]
  resources :vendors do
    resources :items, only: [:index, :show]
  end
  resources :customers
  
  #get vendor by id
  get '/vendors/:id', to: 'vendors#show'

  #sign up new customer 
  post '/signup', to: 'customers#create' 

  #sign up new vendor
  post '/signupvendor', to: 'vendors#create'

  #signing customer or vendor in 
  post '/login', to: 'sessions#create'

  #signing customer or vendor out
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #keeping customer and vendor logged in
  get '/loggedin', to: 'login#show'

  #creating an order 
  post '/order', to: 'orders#create'

  #vendor updating item
  patch '/items/:id', to: 'items#update'

  #get all orders that belong to customer
  get '/orders/:id', to: 'orders#show'

  #vendor to delete items from shop
  # delete '/items/:id', to: 'items#destroy'

end
