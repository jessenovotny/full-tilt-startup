Rails.application.routes.draw do
  root to: 'application#index'
  get '/contact', to: 'application#contact'
  get '/testimonials', to: 'application#testimonials'
end
