Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  resources :movies, only: [:index, :show]
  resources :bookmarks, only: [:destroy]
  root "lists#index"
end
