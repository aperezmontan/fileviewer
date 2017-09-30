Rails.application.routes.draw do
  resources :links, :only => [:show]
  resources :uploads, :only => [:index, :create]
  root to: "uploads#index"
end
