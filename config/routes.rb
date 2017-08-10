Rails.application.routes.draw do
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:show]
  resources :sessions, only: [:new, :destroy, :create]
  root 'main#index'
=======

  resources :experiments do 
  	resources :procedures
  end
  

  resources :proposals, only: [:index, :new, :show, :update, :edit, :create]
  root 'experiments#index'
>>>>>>> master
end
