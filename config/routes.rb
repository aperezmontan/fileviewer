Rails.application.routes.draw do
  resources :links, :only => [:show]
  resources :uploads, :only => [:index]
  root to: "uploads#index"
end
