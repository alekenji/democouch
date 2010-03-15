ActionController::Routing::Routes.draw do |map|
  map.resources :clients

  map.root :controller => "clients"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end
