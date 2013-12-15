Korning::Application.routes.draw do
  resources :employees, only: [:index, :show]
end
