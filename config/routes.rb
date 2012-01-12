Branchitout::Application.routes.draw do
  resources :users
  resources :story_nodes
  resources :stories
  resources :comments
  resources :sessions, :only => [:new, :create, :destroy]

  root :to => "frontpage#frontpage"

  match "signup" => "users#sign_up"
  match "login" => "sessions#new"
  match "logout" => "sessions#destroy"
end
