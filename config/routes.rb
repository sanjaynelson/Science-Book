Rails.application.routes.draw do

  get 'experiments/:id/observations' => 'observations#index'
  post 'experiments/:id/observations' => 'observations#create'

  post 'experiments/:id/comments' => 'comments#create'



  resources :experiments do
  	resources :procedures
  end


  resources :proposals, only: [:index, :new, :show, :update, :edit, :create]
  root 'experiments#index'

end
