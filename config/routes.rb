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
  get "/contact" => "static#contact"
  get "/business_landing" => "providers#business_landing"
  get "/residential_landing" => "providers#residential_landing"

end
