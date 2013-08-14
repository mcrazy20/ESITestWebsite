ESITestWebsite::Application.routes.draw do
  get "content/meetings"
  get "content/sponsors"
  get "content/aboutus"
  get "content/scholarship"
  get "content/charity"
  get "content/events"
  get "content/news"
  get "content/pressrelease"
  get "homepage/index"
  get "content/contact"
  get "content/volunteer"
  get "content/scrules"

  resources :content
  resources :homepage

  match '/meetings', to: 'content#meetings'
  match '/aboutus', to: 'content#aboutus'
  match '/sponsors', to: 'content#sponsors'
  match'/scholarship', to: 'content#scholarship'
  match '/charity', to: 'content#charity'
  match '/events', to: 'content#events'
  match '/news', to: 'content#news'
  match '/pressrelease', to: 'content#pressrelease'
  match '/contact', to: 'content#contact'
  match '/volunteer', to: 'content#volunteer'
  match '/scrules', to: 'content#scrules'

  root to:"homepage#index"
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
