Rails.application.routes.draw do

  root 'page#home'
  get 'about', to: 'page#about'

  resources :articles
end
