Rails.application.routes.draw do
  resources :grower_fields
  resources :growers
  resources :fields
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
