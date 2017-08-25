Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root "creatures#index"

  # get "/creatures", to: "creatures#index", as: "creatures"
  # get "/creatures/new", to: "creatures#new", as: "new_creature"
  # post "/creatures", to: "creatures#create"
  # get "/creatures/show/:id", to: "creatures#show", as: "creature"
  # get "/creatures/:id/edit", to: "creatures#edit", as: "edit_creature"
  # patch "/creatures/:id", to: "creatures#update"
  # delete "/creatures/:id", to: "creatures#destroy"

  resources :creatures

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
