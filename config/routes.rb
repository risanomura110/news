Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items do
    resources :comments, only: :create
    collection do
      get 'search'
      get 'political'
      get 'inter'
      get 'economy'
      get 'society'
      get 'media'
      get 'life'
    end
  end
end
