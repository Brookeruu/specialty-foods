Rails.application.routes.draw do

  devise_for :users
  root to: "products#index"

  resources :products do
    resources :reviews
    collection do
      get 'usa'
      get 'most_reviews'
      get 'most_recent'
    end
  end
end
