Rails.application.routes.draw do
  devise_for :employees, :controllers => {registrations: 'registrations'}

  root to: "clients#index"

  get '/redirect', to: 'calendar#redirect', as: 'redirect'
  get '/callback', to: 'calendar#callback', as: 'callback'
  get '/calendars', to: 'calendar#calendars', as: 'calendars'
  get '/events/:calendar_id', to: 'calendar#events', as: 'events', calendar_id: /[^\/]+/
  post '/events/:calendar_id', to: 'calendar#new_event', as: 'new_event', calendar_id: /[^\/]+/


  resources :employees do
    resources :services
  end

  resources :clients do
    resources :services
  end

  resources :clients do
    resources :invoices
  end
  
end
