Rails.application.routes.draw do
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :favorites, only: [:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
