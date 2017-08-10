Rails.application.routes.draw do
  resources :experiments 
  root 'experiments#index'
end
