Rails.application.routes.draw do
    get 'reviews/my_reviews' => 'reviews#my_reviews'
  

   post 'reviews/submit' => 'reviews#submit'

   

   get 'tickets/my_tickets' => 'tickets#my_tickets' 
   post 'tickets/my_tickets' => 'tickets#my_tickets'
   
   get 'events/pay' => 'events#pay'
   post 'events/pay' => 'events#pay'

   get 'events/search' => 'events#search'
   post 'events/search' => 'events#search'
  
   get 'events/search_results' => 'events#search_results'
   post 'events/search_results' => 'events#search_results'


  get '/bookings/book' => 'bookings#book'
  post '/bookings/book' => 'bookings#book'

  get '/bookings/results' => 'bookings#results'
  post '/bookings/results' => 'bookings#results'

  get '/bookings/pay' => 'bookings#pay'
  post '/bookings/pay' => 'bookings#pay'

  get '/bookings/final' => 'bookings#final'
  post '/bookings/final' => 'bookings#final'


  resources :bookings
  resources :showtimes  
  resources :locations
  resources :events
  resources :tickets
  devise_for :users
  resources :reviews

  root :to => "home#index"

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
