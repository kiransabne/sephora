Rails.application.routes.draw do
  
  get 'products/catalog'
  get 'categories/back_office'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
  resources :categories
  resources :sub_categories
  resources :sub_sub_categories 
end
