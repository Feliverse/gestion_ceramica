Rails.application.routes.draw do
  resources :inventarios
  resources :venta
  resources :orden_compras
  resources :clientes
  resources :productos
  resources :proveedors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
