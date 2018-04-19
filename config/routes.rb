Rails.application.routes.draw do
  root 'position_in_queues#index'
  resources :position_in_queues
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
