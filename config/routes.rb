# frozen_string_literal: true

Rails.application.routes.draw do
  root 'newsletter_preferences#new'

  resources :newsletter_preferences, only: %i[new create]
end
