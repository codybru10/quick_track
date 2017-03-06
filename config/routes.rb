Rails.application.routes.draw do
  devise_for :employees, :controllers => {registrations: 'registrations'}

  root to: "clients#index"

  get '/redirect', to: 'calendar#redirect', as: 'redirect'
  get '/callback', to: 'calendar#callback', as: 'callback'


  resources :employees do
    resources :services
  end

  resources :clients do
    resources :services
  end
end
