Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show]
  resources :projects
  resources :bios
  resources :pages
  resources :services
  root "pages#index"
  get '/contact' => 'pages#contact' , :as => "contact"
end
