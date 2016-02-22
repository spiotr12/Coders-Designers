Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :bios
  resources :pages
  resources :services
  root "pages#index"

end
