# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: redirect('listings')

  get 'listings', to: 'listings#index', as: 'listings'
  post 'listings', to: 'listings#create'
  get 'listings/new', to: 'listings#new', as: 'new_listing'
  get 'listings/:id', to: 'listings#show', as: 'listing'
  get 'listings/:id/edit', to: 'listings#edit', as: 'edit_listing'
  patch 'listings/:id', to: 'listings#update'
  delete 'listings/:id', to: 'listings#destroy'
end
