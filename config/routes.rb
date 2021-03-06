Rails.application.routes.draw do
  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :measures, only: [:new, :create]
    resources :comments, only: :create
  end
end
