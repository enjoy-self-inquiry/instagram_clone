Rails.application.routes.draw do
  root to: 'sessions#new' 
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :favorites, only: [:create, :destroy, :index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users do
      resources :favorites
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
