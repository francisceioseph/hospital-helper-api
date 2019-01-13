Rails.application.routes.draw do
  get   '/doctors', to: 'doctors#index'
  post  '/doctors', to: 'doctors#create'
  get   '/doctors/:id', to: 'doctors#show'
  patch '/doctors/:id', to: 'doctors#update'

  get   '/pacients', to: 'pacients#index'
  post  '/pacients', to: 'pacients#create'
  patch '/pacients/:id', to: 'pacients#update'
  get   '/pacients/:id', to: 'pacients#show'

  get   '/addresses', to: 'addresses#index'
  post  '/addresses', to: 'addresses#create'
  get   '/addresses/:id', to: 'addresses#show'
  patch '/addresses/:id', to: 'addresses#update'
  delete '/addresses/:id', to: 'addresses#destroy'

  # For details on the DSL available withn this file, see http://guides.rubyonrails.org/routing.html
end
