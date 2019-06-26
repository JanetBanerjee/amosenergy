Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :payments
      resources :plans
      resources :providers

      root to: "users#index"
    end
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

  get "/business_500" => "providers#business_500"
  get "/business_1000" => "providers#business_1000"
  get "/business_2000" => "providers#business_2000"

  get "/residential_500" => "providers#residential_500"
  get "/residential_1000" =>  "providers#residential_1000"
  get "/residential_2000" => "providers#residential_2000"
end
