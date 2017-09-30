Rails.application.routes.draw do
  resources :links, :only => [:show, :create]
  resources :uploads, :only => [:index, :create]
  root to: "uploads#index"
end
