Rails.application.routes.draw do
  devise_for :admins,
    path: '/admin',
    path_names: { sign_in: 'login', sign_out: 'logout' },
    controllers: { sessions: 'admin/sessions' }
  
  root to: 'home#index'

  get 'about', to: 'home#about' 

  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end

  namespace :admin do
    get  '/dashboard', to: 'admin#dashboard'
  end
end
