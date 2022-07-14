Rails.application.routes.draw do
  resources :users, only: [:show]
  get 'home/index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
