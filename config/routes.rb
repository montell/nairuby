NairubySite::Application.routes.draw do
  resources :discussions

  authenticated :user do
    root :to => 'home#index'
  end
  match 'home/calendar' => 'home#calendar', :via => :get
  match 'home/members' => 'home#members', :via => :get
  match 'admin/emails' => 'home#send_notifications', :via => :get, :as => 'admin_send_emails'
  root :to => "home#index"
  devise_for :users
  resources :users
end