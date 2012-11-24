NairubySite::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  match 'home/calendar' => 'home#calendar', :via => :get
  root :to => "home#index"
  devise_for :users
  resources :users
end