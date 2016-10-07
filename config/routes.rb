Ecm::Staff::Backend::Engine.routes.draw do
  resources :organisations
  resources :business_units
  resources :positions
  resources :people

  root to: 'home#index'
end
