ActionController::Routing::Routes.draw do |map|
  map.resources :role_permissions
  map.resources :user_roles
  map.resources :permissions
  map.resources :roles
  map.resources :users
  map.resources :sessions, :only => [:new, :index]
  map.resources :control_panels, :only => [:index]
  map.resources :forgot_pass, :only => [:new, :index]
  map.resources :forgot_password_mailer, :only => [:index]
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

  map.root :controller => "home"
end

