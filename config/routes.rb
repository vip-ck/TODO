Rails.application.routes.draw do
  resources :events
  get 'events/page/(:page(.:format))', to: 'events#index'
  get 'help', to: 'help#index', as: 'help_index'
  get 'about', to: 'about#index', as: 'about_index'
  
  root 'events#index'
  
end
