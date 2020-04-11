Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'teams#index'
  # Teams
  get  'teams/show'   => 'teams#show'
  get  'teams/new'    => 'teams#new'
  post 'teams/create' => 'teams#create'
end
