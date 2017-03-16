Rails.application.routes.draw do
  root to: 'application#index'
  post '/contact', to: 'lead#contact'
  post '/optin', to: 'lead#optin'
end
