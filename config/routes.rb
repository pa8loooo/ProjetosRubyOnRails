Rails.application.routes.draw do
  resources :books
  resources :loans
  resources :users do
    get 'loans', to: 'loans#user_loans', on: :member
  end
  root "users#index"
end
