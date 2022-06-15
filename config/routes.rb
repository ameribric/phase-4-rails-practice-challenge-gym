Rails.application.routes.draw do
  resources :memberships, only: [:create]
  resources :gyms, only: [:update, :show, :index, :destroy]
  resources :clients, only: [:show, :index, :update]
end
