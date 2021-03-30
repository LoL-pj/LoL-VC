Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'teams#index'

  resources :teams, expect: :index do
    collection do
      get :search
    end
  end
end
