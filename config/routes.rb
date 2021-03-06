Ganexus::Application.routes.draw do
  
  root :to => "courses#index"

  resources :courses
  resources :users
  resources :rooms
  resources :sessions

  get "/signup", to: "users#new",         as: "signup"
  get "/login",  to: "sessions#new" ,     as: "login"
  delete "/logout", to: "sessions#destroy",  as: "logout"
  get "/courses/:id/apply", to: "courses#apply", as: :apply


end

# root        /                           courses#index
#     courses GET    /courses(.:format)          courses#index
#             POST   /courses(.:format)          courses#create
#  new_course GET    /courses/new(.:format)      courses#new
# edit_course GET    /courses/:id/edit(.:format) courses#edit
#      course GET    /courses/:id(.:format)      courses#show
#             PUT    /courses/:id(.:format)      courses#update
#             DELETE /courses/:id(.:format)      courses#destroy
#       users GET    /users(.:format)            users#index
#             POST   /users(.:format)            users#create
#    new_user GET    /users/new(.:format)        users#new
#   edit_user GET    /users/:id/edit(.:format)   users#edit
#        user GET    /users/:id(.:format)        users#show
#             PUT    /users/:id(.:format)        users#update
#             DELETE /users/:id(.:format)        users#destroy
#       rooms GET    /rooms(.:format)            rooms#index
#             POST   /rooms(.:format)            rooms#create
#    new_room GET    /rooms/new(.:format)        rooms#new
#   edit_room GET    /rooms/:id/edit(.:format)   rooms#edit
#        room GET    /rooms/:id(.:format)        rooms#show
#             PUT    /rooms/:id(.:format)        rooms#update
#             DELETE /rooms/:id(.:format)        rooms#destroy

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

