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
  get '/games/:id/edit' => 'games#edit', as: 'games_edit'
  patch '/games/:id/edit' => 'games#update'
  get '/games/:id/show' => 'games#show', as: 'games_show'
  get '/games/index' => 'games#index'

  get '/games/:id/add_home_players' => 'home_players#new', as: 'add_home_player'
  post '/games/:id/add_home_players' => 'home_players#create'
  patch '/home_players/:id/increment' => 'home_players#increment_bat', as: 'increment_home_bat'
  patch '/home_players/:id/decrement' => 'home_players#decrement_bat', as: 'decrement_home_bat'
  delete '/home_players/:id/' => 'home_players#destroy', as: 'delete_home_player'
  get '/games/:id/add_away_players' => 'away_players#new', as: 'add_away_player'
  post '/games/:id/add_away_players' => 'away_players#create'
  patch '/away_players/:id/increment' => 'away_players#increment_bat', as: 'increment_away_bat'
  patch '/away_players/:id/deccrement' => 'away_players#decrement_bat', as: 'decrement_away_bat'
  delete '/away_players/:id/' => 'away_players#destroy', as: 'delete_away_player'

  get '/hit_challenges/:id/play' => 'hit_challenges#play', as: 'play_hit_challenge'
  post '/games/:id/show' => 'hit_challenges#create', as: 'create_hit_challenge'

  post '/hit_challenges/:id/play' => 'hit_guesses#create', as: 'submit_hit_guess'
  get '/hit_challenges/:id/status' => 'hit_challenges#status', as: 'hit_status'

  get '/prop_bets/new' => 'prop_bets#new', as: 'new_prop_bet'
  post '/prop_bets/new' => 'prop_bets#create', as: 'create_prop_bet'
  get 'prop_bets/:id/questions/new' => 'questions#new', as: 'new_question'
  post 'prop_bets/:id/questions/new' => 'questions#create', as: 'create_question'
  get '/prop_bets/:id/play' => 'prop_bets#play', as: 'show_prop_bet'
  post '/prop_bets/:id/play'=> 'answers#create', as: 'submit_answers'
  get '/prop_bets/:id/pick_correct_answers' => 'prop_bets#pick_correct_answers', as: 'pick_correct_answers'
  post '/prop_bets/:id/pick_correct_answers' => 'prop_bets#submit_correct_answers', as: 'submit_correct_answers'
  get '/prop_bets/:id/status' => 'prop_bets#status', as: 'prop_status'

  post '/suites/new' => 'suites#create', as: 'create_suite'





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
