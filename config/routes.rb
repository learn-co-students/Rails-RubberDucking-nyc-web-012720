Rails.application.routes.draw do
  resources :students
  resources :ducks
  resources :ducks, only: [:index]
  resources :students, only: [:index]
end
