Rails.application.routes.draw do
  resources :payments, only: [:index, :new, :create]
  resources :plans
  resources :providers
  devise_for :users
  root to: 'static#homepage'

  get "/residential" => "providers#residential"
  get "/business" => "providers#business"
  get "/launchyourbusiness" => "static#launchyourbusiness"
  get "/new" => "providers#new"

end
