Rails.application.routes.draw do
  # constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :students,only: :show
        resources :teachers, only: [:index,:destroy]
      end
    end
  # end
end
