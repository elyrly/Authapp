Authapp::Application.routes.draw do
      resources :users
      resources :sessions
      get '/'  => "users#index"
      get '/admin' => "users#admin"
      get '/logout' => 'sessions#destroy'
end
