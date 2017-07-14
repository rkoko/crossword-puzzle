Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :words, only: [:index, :show]
  resources :users, only: [:create, :show]

  post '/login', to: 'users#find_user'
  get '/home', to: 'words#home'
end
