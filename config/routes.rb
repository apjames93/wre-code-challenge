Rails.application.routes.draw do

  root 'page#home'
  get 'about', to: 'page#about'

  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
