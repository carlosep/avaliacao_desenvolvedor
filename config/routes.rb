Rails.application.routes.draw do
  root 'sales#new'
  resources :sales
end
