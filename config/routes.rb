Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :supers do
    resources :bookings
    member do
      put "like" => "supers#upvote"
      put "unlike" => "supers#downvote"
    end
  end
  resources :users, only: [:show]
end
