require 'resque/server'

Rails.application.routes.draw do
  mount RootApi => '/'
  mount Resque::Server.new, at: '/resque'
  post :toggle, to: 'locales#toggle'
  namespace :admin do
    root 'users#index'
    resources :users
  end
  devise_for :users
  resources :events
  get 'events/page/(:page(.:format))', to: 'events#index'
  get 'help', to: 'help#index', as: 'help_index'
  get 'about', to: 'about#index', as: 'about_index'
  scope '/:locale' do
    get 'about', to: 'about#index'
  end
  root 'events#index'
  
end
