Rails.application.routes.draw do

  resources :members, only: [:show, :index, :new, :create] do
    resources :partnerships, only: [:create, :destroy]
  end
  resources :schools, only: [:show]

  root "members#index"

  devise_for :users
end
