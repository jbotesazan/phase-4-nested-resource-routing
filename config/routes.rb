Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    # Nested resource for reviews
      resources :reviews, only: [:show, :index]
  end
  resources :reviews, only: [:show, :index, :create]
end
