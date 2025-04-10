Rails.application.routes.draw do
  resources :books
  resources :loans
  resources :users
  root "users#index"
end
