Rails.application.routes.draw do
  devise_for :employees, :controllers => {registrations: 'registrations'}

  root to: "clients#index"

  resources :employees do
    resources :services
  end

  resources :clients do
    resources :services
  end
end
