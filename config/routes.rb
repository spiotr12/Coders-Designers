Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :bios
  resources :pages
  root "projects#index"
end
