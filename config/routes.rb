Rails.application.routes.draw do
  resources :subscriptions
  resources :courses
  resources :teachers
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
