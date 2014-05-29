Rails.application.routes.draw do

  devise_for :users
  root 'games#index'

  # Routes for the Sport resource:
  # CREATE
  get('/sports/new', { :controller => 'sports', :action => 'new' })
  get('/create_sport', { :controller => 'sports', :action => 'create' })

  # READ
  get('/sports', { :controller => 'sports', :action => 'index' })
  get('/sports/:id', { :controller => 'sports', :action => 'show' })

  # UPDATE
  get('/sports/:id/edit', { :controller => 'sports', :action => 'edit' })
  get('/update_sport/:id', { :controller => 'sports', :action => 'update' })

  # DELETE
  get('/delete_sport/:id', { :controller => 'sports', :action => 'destroy' })
  #------------------------------

  # Routes for the Invite resource:
  # CREATE
  get('/invites/new', { :controller => 'invites', :action => 'new' })
  get('/create_invite', { :controller => 'invites', :action => 'create' })

  # READ
  get('/invites', { :controller => 'invites', :action => 'index' })
  get('/invites/:id', { :controller => 'invites', :action => 'show' })

  # UPDATE
  get('/invites/:id/edit', { :controller => 'invites', :action => 'edit' })
  get('/update_invite/:id', { :controller => 'invites', :action => 'update' })

  # DELETE
  get('/delete_invite/:id', { :controller => 'invites', :action => 'destroy' })
  #------------------------------

  # Routes for the Game resource:
  # CREATE
  get('/games/new', { :controller => 'games', :action => 'new' })
  get('/create_game', { :controller => 'games', :action => 'create' })

  # READ
  get('/games', { :controller => 'games', :action => 'index' })
  get('/games/:id', { :controller => 'games', :action => 'show' })

  # UPDATE
  get('/games/:id/edit', { :controller => 'games', :action => 'edit' })
  get('/update_game/:id', { :controller => 'games', :action => 'update' })

  # DELETE
  get('/delete_game/:id', { :controller => 'games', :action => 'destroy' })
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
