Rails.application.routes.draw do

  resources :contas_a_recebers
  resources :contas_a_pagars
  resources :tios
  resources :jovems
  resources :equipes
  resources :eventos
  resources :inicio
  
  devise_for :usuarios, path: 'admin', skip: :registrations
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "inicio#index" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'application#hello'
end
