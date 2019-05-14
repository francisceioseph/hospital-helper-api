# frozen_string_literal: true

Rails.application.routes.draw do
  get 'uploads/download'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  get '/', to: redirect('/api-docs')

  get 'messages/index'
  get 'messages/create'
  get 'conversations/index'
  get 'conversations/create'
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }

  resources :conversations, only: [:index, :create]
  resources :messages, only: [:create]

  get '/conversations/users', to: 'conversations#users'
  
  mount ActionCable.server => '/cable'

  get   '/doctors', to: 'doctors#index'
  post  '/doctors', to: 'doctors#create'
  get   '/doctors/:id', to: 'doctors#show'
  patch '/doctors/:id', to: 'doctors#update'
  get   '/doctors/:id/appointments', to: 'doctors#appointments'
  get   '/doctors/:id/exams', to: 'doctors#exams'

  get   '/pacients', to: 'pacients#index'
  post  '/pacients', to: 'pacients#create'
  patch '/pacients/:id', to: 'pacients#update'
  get   '/pacients/:id', to: 'pacients#show'
  get   '/pacients/:id/appointments', to: 'pacients#appointments'
  get   '/pacients/:id/exams', to: 'pacients#exams'

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

  get   '/exams', to: 'exams#index'
  post  '/exams', to: 'exams#create'
  get   '/exams/:id', to: 'exams#show'
  patch '/exams/:id', to: 'exams#update'

  get   '/exam-types', to: 'exam_types#index'
  post  '/exam-types', to: 'exam_types#create'
  get   '/exam-types/:id', to: 'exam_types#show'
  patch '/exam-types/:id', to: 'exam_types#update'
  delete '/exam-types/:id', to: 'exam_types#destroy'

  get   '/appointments', to: 'appointments#index'
  post  '/appointments', to: 'appointments#create'
  get   '/appointments/:id', to: 'appointments#show'
  patch '/appointments/:id', to: 'appointments#update'

  get   '/appointment-types', to: 'appointment_types#index'
  post  '/appointment-types', to: 'appointment_types#create'
  get   '/appointment-types/:id', to: 'appointment_types#show'
  patch '/appointment-types/:id', to: 'appointment_types#update'
  delete '/appointment-types/:id', to: 'appointment_types#destroy'

  get   '/surgeries', to: 'surgeries#index'
  post  '/surgeries', to: 'surgeries#create'
  get   '/surgeries/:id', to: 'surgeries#show'
  patch '/surgeries/:id', to: 'surgeries#update'

  get   '/surgery-types', to: 'surgery_types#index'
  post  '/surgery-types', to: 'surgery_types#create'
  get   '/surgery-types/:id', to: 'surgery_types#show'
  patch '/surgery-types/:id', to: 'surgery_types#update'
  delete '/surgery-types/:id', to: 'surgery_types#destroy'

  get   '/specialties', to: 'specialties#index'
  post  '/specialties', to: 'specialties#create'
  get   '/specialties/:id', to: 'specialties#show'
  patch '/specialties/:id', to: 'specialties#update'
  delete '/specialties/:id', to: 'specialties#destroy'

  get   '/roles', to: 'roles#index'
  get   '/roles/:role_type', to: 'roles#show'

  get   '/profiles/:id', to: 'profiles#show'

  get 'uploads/:model_class/:mounted_as/:model_id/:basename.:extension', to: "uploads#download"
end
