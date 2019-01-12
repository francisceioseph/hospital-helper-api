Rails.application.routes.draw do
  get   '/pacients', to: 'pacients#index'
  post  '/pacients', to: 'pacients#create'
  patch '/pacients/:id', to: 'pacients#update'
  get   '/pacients/:id', to: 'pacients#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
