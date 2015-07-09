PIS::Application.routes.draw do
 resources :patients
 root 'patients#index'
end
