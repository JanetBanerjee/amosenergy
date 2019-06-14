Rails.application.routes.draw do
  resources :providers
  devise_for :users
  root to: 'static#homepage'

  get "/residential" => "static#residential"
  get "/business" => "static#business"
  get "/launchyourbusiness" => "static#launchyourbusiness"

end
