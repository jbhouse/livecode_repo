Rails.application.routes.draw do
  resources :users, :dogs
  root 'users#index'
end
