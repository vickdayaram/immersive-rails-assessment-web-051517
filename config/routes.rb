Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :episodes
  resources :sessions, only: [:new, :create]
  resources :episode_guests
  resources :users
end
