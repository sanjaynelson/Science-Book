Rails.application.routes.draw do
  resources :proposals, only: [:index, :show, :edit, :create]
end
