Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#new'
  get '/users/:id/show' => 'users#show'
  get '/login' => 'users#new'
  post '/sessions' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/games/new' => 'games#new'
  post '/games/new' => 'games#create'
  get '/games/:id/show' => 'games#show', as: 'games_show'
  get '/games/:id/add_home_players' => 'home_players#new', as: 'add_home_player'
  post '/games/:id/add_home_players' => 'home_players#create'
  patch '/home_players/:id/increment' => 'home_players#increment_bat', as: 'increment_home_bat'
  patch '/home_players/:id/decrement' => 'home_players#decrement_bat', as: 'decrement_home_bat'
  get '/games/:id/add_away_players' => 'away_players#new', as: 'add_away_player'
  post '/games/:id/add_away_players' => 'away_players#create'
  patch '/away_players/:id/increment' => 'away_players#increment_bat', as: 'increment_away_bat'
  patch '/away_players/:id/deccrement' => 'away_players#decrement_bat', as: 'decrement_away_bat'
  get '/hit_challenges/:id/show' => 'hit_challenges#show', as: 'show_hit_challenge'
  post '/games/:id/show' => 'hit_challenges#create', as: 'create_hit_challenge'
  post '/hit_challenges/:id/show' => 'hit_guesses#create', as: 'submit_hit_guess'




  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  resources :users

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
