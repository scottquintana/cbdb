Rails.application.routes.draw do
  devise_for :roasters
  #devise_for :users
  namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create, :destroy]
      resources :roasters
   
    end
  end

end
