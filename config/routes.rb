Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/Y', as: 'rails_admin'
  resources :contas_a_recebers
  resources :contas_a_pagars
  resources :tios
  resources :jovems
  devise_for :usuarios
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
