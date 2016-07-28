Rails.application.routes.draw do
  
  resources :articles do
    resources :comments
  end
  
  # tells Rails to map requests to the root of the application to the welcome controller's index action
  root 'welcome#index'

  
end
