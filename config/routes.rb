Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
   namespace :api do
     namespace :v1 do
       resources :reasons
     end
   end

  # You can have the root of your site routed with "root"
   root 'home#index'

   # Wildcard for ember paths
   get '*path', to: 'home#index'
end
