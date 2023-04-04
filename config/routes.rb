Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'users#index'
  resources :users
  resources :posts
  resources :users do
    collection do
      get 'search'
    end
  end
end
