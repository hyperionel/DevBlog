Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  get 'about', to: 'home#about' 

  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end

  namespace :admin do
    get  '/', to: 'admin#login'
    get  'dashboard', to: 'admin#dashboard'
    post '/', to: 'admin#do_auth'
  end
end
