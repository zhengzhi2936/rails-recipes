Rails.application.routes.draw do

  devise_for :users

  resources :events

  namespace :admin do
    root "events#index"
    resources :events
    resources :users do
      resource :profile, :controller => "user_profiles"
    end
  end
  resource :user
  root "events#index"

end
