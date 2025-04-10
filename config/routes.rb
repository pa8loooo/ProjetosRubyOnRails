Rails.application.routes.draw do
  resources :books
  resources :loans
  resources :users
  resources :user do
    get 'loans', to: 'loans#user_loans', on: :member
  end
  root "users#index"
end
