Rails.application.routes.draw do
  resources :receipts
  resources :payments
  resources :cash_registers
  resources :remission_notes
  resources :transfer_details
  resources :transfers
  resources :inventory_entry_details
  resources :inventory_entries
  resources :warehouses
  resources :sale_details
  resources :sales
  resources :quotation_details
  resources :quotations
  resources :products
  resources :clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sales#new"
  
end
