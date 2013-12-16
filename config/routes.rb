Korning::Application.routes.draw do
  resources :employees, only: [:index, :show]
  resources :sales, only: [:index, :show]
  resources :customer, only: [:index, :show]
end
