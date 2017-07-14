Rails.application.routes.draw do
  resources :daily_records
  get 'home/index'
  devise_for :users

  resources :care_receivers do
    member do
      patch 'share'
    end
  end

  resources :careships

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
