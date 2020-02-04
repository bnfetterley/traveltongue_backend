Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :dishes
  resources :locations
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/dishes' => 'dishes#create'
  post '/login', to: 'auth#login'
  get '/persist', to: 'auth#persist'
  

end
