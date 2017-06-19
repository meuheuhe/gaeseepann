Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions" },path: "", path_names: { sign_in: 'login', sign_out: 'logout' }
  root 'questions#new'
  get 'questions/home1'

  post 'questions/new' => 'questions#home1'


  post 'questions/create'

  get 'questions/index'
  
  post 'questions/index' => 'questions#userpage'

  get 'questions/grade'
  
  get 'questions/admin'
  
  get 'questions/new'
  
  get 'questions/comment_destroy/:id' => 'questions#comment_destroy'
  
  get 'questions/destroy/:id' => 'questions#destroy'

  post 'questions/update/:id' => 'questions#update'

  get 'questions/update_view/:id'=> 'questions#update_view'
  
  post 'questions/comment_create/:question_id' => 'questions#comment_create'
  
  get 'questions/content/:id' => 'questions#content'
  
  get 'questions/content_view/:id' => 'questions#content_view'


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
