Platform::Application.routes.draw do


  resources :sessions, only: [:new, :create, :destroy]
  match 'signin',to: "sessions#new",via: :get
  match 'signout',to: "sessions#destroy",via: :post

  resources :timetables

  resources :reservations do  
    collection do
       get 'admin'
    end
    member do
       match 'new_instrument',via: [:get,:post,:patch]
    end
  end

  resources :users do
    collection do 
       get 'admin'
       get 'expert'
       get 'experts'
    end
  end

  resources :instruments do
    collection do
         get 'admin'
    end
  end

  get "welcome/index"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
