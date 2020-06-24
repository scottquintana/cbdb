Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :roasters #, path: 'roasters' 
  resources :roasters
  resources :beans#, path: '/roasters/beans'
 
  namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create, :destroy]
      resources :roasters
      resources :beans
   
    end
  end

end
