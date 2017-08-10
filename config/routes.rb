Rails.application.routes.draw do
  resources :proposals, only: [:index, :new, :show, :edit, :create]
end
