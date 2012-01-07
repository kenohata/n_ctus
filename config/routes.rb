Connectus::Application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations",
    sessions: "sessions",
    passwords: "passwords"}

  resources :users do
    get "profiles", on: :collection, controller: "profiles", action: "index"
    resource :profile, except: [:new, :create, :destroy] do
      get "detail"
    end
    resources :readings, only: [:index, :create, :destroy]
    resources :microposts, only: [:index, :create, :destroy] do
      resources :comments, only: [:new, :create, :destroy]
    end
    resources :direct_messages, except: [:edit, :update]
  end

  resources :notes, constraints: {id: /[0-9]+/} do
    # get "images", :action => :images, :on => :collection
    resources :note_images, except: [:index,]
    resources :pages, except: [:index, :new]  
    match ':department(/:grade(/:kind))' => "notes#listing",
     constraints: {department: /[A-Z]{2}/, grade: /[1-4]/}, on: :collection, as: "listing"
  end
  
  get "campus" => "static_pages#campus"
  get "reading" => "static_pages#reading"
  
  root :to => "static_pages#campus"

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
  # match ':controller(/:action(/:id(.:format)))'
end
