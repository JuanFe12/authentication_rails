Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"
end
