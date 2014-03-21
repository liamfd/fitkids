Fitkids::Application.routes.draw do

  resources :avatars


  devise_for :watchers

  devise_for :children, :controllers => { :sessions => "children/sessions" }

  get "home/index"

  devise_for :users

  resources :child_guardian_relationships do
    resources :users
  end

  resources :users do
    get :child_profile, on: :collection
    get :watcher_profile, on: :collection
    get :sanitized_child_profile, on: :collection
    #resources :child_guardian_relationships
    resources :daily_diets do
      resources :diet_plans
    end
  end


  resources :exercise_reps


  resources :articles


  resources :diet_plans


  resources :daily_diets


  #ME

  resources :leaderboards do
    get :index_children, on: :collection
  end


  post '/users/increment_exercise'
  post '/users/increment_carbs'
  post '/users/increment_fruit'
  post '/users/increment_prot'
  post '/users/increment_sweets'
  post '/users/increment_veggies'
  post '/users/increment_water'
  post '/users/get_daily_diet'
  #post '/users/sanitized_child_profile'






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
  root :to => 'home#index'

	#Do we need these?
	#match 'users/child_profile' => 'users#child_profile'
  #match 'users/watcher_profile' => 'users#watcher_profile'
	

  #resources :users do
  #  member do
  #    get 'child_profile'
  #  end
  #end
  #resources :users do
  #  member do
  #    get 'watcher_profile'
  #  end
  #end
  #resources :users do
  #  member do
  #    get 'getNewDailyDiet'
  #  end
  #end


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
