Todo::Application.routes.draw do

  get "sessions/new"

  get "sessions/create"

  get "sessions/failure"

get "home/index"

  resources :lists do
    resources :tasks
  end

  match 'lists/:list_id/tasks/:id/complete' => 'tasks#complete', :as => :complete_task
  
  root :to => 'home#index'
  
 
get   '/login', :to => 'sessions#new', :as => :login
match '/auth/:provider/callback', :to => 'sessions#create'
match '/auth/failure', :to => 'sessions#failure'
get '/logout', :to => 'sessions#destroy'
root :to => "home#index"
end