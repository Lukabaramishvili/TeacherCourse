Rails.application.routes.draw do

  get 'signup', to: 'teachers#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#new', as: 'logout'

  resources :students
  resources :enrollments
  resources :courses
  resources :teachers
  resources :sessions
  root to: 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
