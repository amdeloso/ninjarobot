PIS::Application.routes.draw do
 resources :patient
 root 'patient#index'
end
