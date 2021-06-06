Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  get 'about_me', to: 'home#about_me'

  namespace :api do
    resources :posts do
      collection do
        get :index
      end

      member do
        get  :show # has to be here because of the star route below
        post :create
        post :destroy
        put  :edit
      end
    end
  end

end
