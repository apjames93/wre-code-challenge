Rails.application.routes.draw do
  
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  post "/graphql", to: "graphql#execute"
  root 'pages#home'
  get 'about', to: 'pages#about'
  
  resources :articles
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :categories, except: [:destroy]
end
