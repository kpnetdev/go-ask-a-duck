GoAskADuck::Application.routes.draw do

  resources :sessions, :users, only: [:new, :create, :destroy]
  resources :questions
  root to: 'questions#index'
end
