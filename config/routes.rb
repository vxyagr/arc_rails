Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {sessions: 'users/sessions'}
  get 'users'               => 'users#index'
  get 'users/:id'           => 'users#show', :as => :user

  get 'authorized_example'  => 'home#authorized_example'

  # devise: "Ensure you have defined root_url to *something* in your config/routes.rb"
  root to: 'home#index'
end
