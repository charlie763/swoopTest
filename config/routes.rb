Rails.application.routes.draw do
  get 'secret/index'
  devise_for :users
  root 'secret#index'
  get '/auth/:provider/callback', to: 'callbacks#swoop'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
