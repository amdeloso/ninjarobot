PIS::Application.routes.draw do
  devise_for :views
  devise_for :users
 resources :patients
 root 'patients#index'
end
