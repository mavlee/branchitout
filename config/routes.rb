Branchitout::Application.routes.draw do
  resources :users
  resources :story_nodes
  resources :stories
  resources :comments
  resources :votes
  resources :sessions, :only => [:new, :create, :destroy]

  root :to => "pages#frontpage"

  match "signup"      => "users#sign_up"
  match "login"       => "sessions#new"
  match "logout"      => "sessions#destroy"
  match "dontstalkme" => "pages#dont_stalk_me"
end
