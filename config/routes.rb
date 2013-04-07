CHZMK::Application.routes.draw do
  devise_for :users

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root :to => 'page#index'
  match 'about' => 'page#about', :as => 'about', :via => 'get'
end
