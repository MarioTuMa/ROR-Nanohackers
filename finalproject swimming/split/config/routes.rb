Rails.application.routes.draw do
  resources :swimmers
  resources :events
  resources :results
  root 'static_pages#home'
end
