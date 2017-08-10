Rails.application.routes.draw do


  resources :proposals, only: [:index, :new, :show, :update, :edit, :create] do
    resources :experiments
  end

  resources :experiments do
    resources :procedures
  end
  root 'proposals#index'
end
