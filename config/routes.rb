PIS::Application.routes.draw do
  devise_for :views
  devise_for :users
 resources :patients do
 	resources :diagnosis
 end
 root 'patients#index'

end
