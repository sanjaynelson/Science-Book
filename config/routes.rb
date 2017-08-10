Rails.application.routes.draw do
  resources :proposals, only: [:index, :new, :show, :update, :edit, :create]
end
