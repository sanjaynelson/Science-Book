Rails.application.routes.draw do
  resources :experiments do 
  	resources :procedures
  end
  root 'experiments#index'
end
