Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'

  resources :lists, expect: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

  # get '/lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # get '/lists/:id', to: 'lists#show', as: :list
  # post 'lists', to: 'lists#create'

  # get 'lists/:id/bookmarks/new', to: 'bookmarks#new'
  # post 'lists/:id/bookmarks', to: 'bookmarks#create'
end
