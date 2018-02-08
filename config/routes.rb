Rails.application.routes.draw do
  get 'categories/index'

  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#show"
  resources :messages
  resources :pings
end
