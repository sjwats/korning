Korning::Application.routes.draw do
  resources :employees, only: [:index, :show]
  resources :sales, only: [:index]
  resources :customer, only: [:index]
end
