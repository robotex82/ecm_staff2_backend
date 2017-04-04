Ecm::Staff::Backend::Engine.routes.draw do
  backend_resources :organisations
  backend_resources :business_units
  backend_resources :positions
  backend_resources :people do
    post :reposition, on: :member
  end

  root to: 'home#index'
end
