Rails.application.routes.draw do
  resources :animals
  resources :visits, except: :edit
  root to: "animals#index"
end
