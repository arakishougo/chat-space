Rails.application.routes.draw do
  get 'messages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< Updated upstream
  root "messages#index"
=======
  root 'groups#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:index, :new, :create, :edit, :update]
>>>>>>> Stashed changes
end
