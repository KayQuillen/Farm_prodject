Rails.application.routes.draw do

  
  get "/pages/:page" => "pages#show"
  root "pages#show", page: "index"
  resources :pages
  resources :cattles
  resources :inventories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
