Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'teams#index'
  # Teams
  resources :teams, only: [:show, :new, :create, :edit, :update, :destroy]
end
