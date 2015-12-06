Rails.application.routes.draw do
  devise_for :users
  get '/' => 'products#index'
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  post '/search/' => 'products#search'

  get '/images/new' => 'images#new'
  post '/images' => 'images#create'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  post '/carted_products' => 'carted_products#create'
  get '/carted_products/:id/edit' => 'carted_products#edit'
  patch '/carted_products/:id' => 'carted_products#update'
  delete '/carted_products/:id' => 'carted_products#destroy'

  get '/users/:id/cart' => 'users#cart'

  get '/suppliers' => 'suppliers#index'
  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'
  get '/suppliers/:id' => 'suppliers#show', as: :supplier
  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'
  delete '/suppliers/:id' => 'suppliers#destroy'
end
