CHZMK::Application.routes.draw do
  root :to => 'page#index'
  match 'about' => 'page#about', :as => 'about', :via => 'get'
end
