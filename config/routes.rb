# frozen_string_literal: true

Rails.application.routes.draw do
  # Devise >>>>>>>>>>>>>>>>>>>>>
  devise_for :users

  # Singletons >>>>>>>>>>>>>>>>>
  root 'grams#index'

  # Resources >>>>>>>>>>>>>>>>>>
  resources :grams do
    resources :comments
  end
end
