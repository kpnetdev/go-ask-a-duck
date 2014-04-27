 GoAskADuck::Application.routes.draw do

  resources :sessions, :users, only: [:new, :create]
  get '/logout' => 'sessions#destroy', :as => 'logout'
  root to: 'questions#index'
  resources :questions do
    resources :answers, only: [:create]
  end
end
