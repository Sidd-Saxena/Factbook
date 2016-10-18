Rails.application.routes.draw do
  root 'facts#index'

  get 'facts' => 'facts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup'  => 'users#new'
  resources :users

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
