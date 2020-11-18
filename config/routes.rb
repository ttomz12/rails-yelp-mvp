Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/index', to: 'restaurants#index'
  get 'index/:id', to: 'restaurants#show', as: :restaurant

  get 'new', to: 'restaurants#new', as: :new
  post 'index', to: 'restaurants#create'

  resources :restaurants do
    resources :reviews, only: [:new, :create] #:rating?
  end
end
