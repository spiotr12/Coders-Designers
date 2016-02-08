Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :bios
  root "projects#index"
end
