Rails.application.routes.draw do
  resources :animals, :photos
  get 'foo', to: :show, controller: 'animals'

  namespace :admin do
    resources :articles, :comments
  end
end
