# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: redirect('dog_listings')

  get 'dog_listings', to: 'dog_listings#index', as: 'dog_listings'
  post 'dog_listings', to: 'dog_listings#create'
  get 'dog_listings/new', to: 'dog_listings#new', as: 'new_dog_listing'
  get 'dog_listings/:id', to: 'dog_listings#show', as: 'dog_listing'
  get 'dog_listings/:id/edit', to: 'dog_listings#edit', as: 'edit_dog_listing'
  patch 'dog_listings/:id', to: 'dog_listings#update'
  delete 'dog_listings/:id', to: 'dog_listings#destroy'
end
