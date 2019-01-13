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

  get   '/emails', to: 'emails#index'
  post  '/emails', to: 'emails#create'
  get   '/emails/:id', to: 'emails#show'
  patch '/emails/:id', to: 'emails#update'
  delete '/emails/:id', to: 'emails#destroy'
  
  get   '/telephones', to: 'telephones#index'
  post  '/telephones', to: 'telephones#create'
  get   '/telephones/:id', to: 'telephones#show'
  patch '/telephones/:id', to: 'telephones#update'
  delete '/telephones/:id', to: 'telephones#destroy'

  # For details on the DSL available withn this file, see http://guides.rubyonrails.org/routing.html
end
