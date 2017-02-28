Rails.application.routes.draw do
  devise_for :employees, :controllers => {registrations: 'registrations'}

  root to: "clients#index"

  resources :employees do
    resources :clients
  end
end
