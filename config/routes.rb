Rails.application.routes.draw do
  root 'items#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items, only: [:index, :new, :create, :show] do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
end