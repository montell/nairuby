class AddEmailSubscriptionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email_subscription, :boolean, :null => false, :default => true

  end
end
