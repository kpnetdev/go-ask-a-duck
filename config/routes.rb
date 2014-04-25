GoAskADuck::Application.routes.draw do

  root to: 'questions#index'
  resources :sessions, :users, only: [:new, :create, :destroy]
  resources :questions do
    resources :answers, only: [:create]
  end
end
