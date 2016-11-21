Rails.application.routes.draw do
  get 'playlists/index'

  devise_for :users, controllers: {registrations:"users/registrations"}
  resources :users do
  	resources :playlists
  end

  resources :songs
  resources :genres

  root 'songs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
