Rails.application.routes.draw do
  resources :artists, only: [:new, :edit]
  get '/artists/:id', to: 'artists#show', as: 'artist'
  post '/artists/new', to: 'artists#create'
  patch '/artists/:id', to: 'artists#update'

  resources :songs, only: [:new, :create, :edit]
  get '/songs/:id', to: 'songs#show', as: 'song'
  patch '/songs/:id', to: 'songs#update'

  resources :genres, only: [:new, :edit]
  get '/genres/:id', to: 'genres#show', as: 'genre'
  post '/genres/new', to: 'genres#create'
  patch '/genres/:id', to: 'genres#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
