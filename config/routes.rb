Rails.application.routes.draw do
  resources :users do
    resource :user_profile do
      resources :addresses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root 'users#index'
end
end
end
