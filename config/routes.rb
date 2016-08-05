Rails.application.routes.draw do
  root 'sales#new'
  resources :sales do
    get 'upload', on: :collection
  end
end
