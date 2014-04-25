GoAskADuck::Application.routes.draw do

  resources :sessions, :users, only: [:new, :create]
  get '/logout' => 'sessions#destroy', :as => 'logout'
  resources :questions
  root to: 'questions#index'
end
