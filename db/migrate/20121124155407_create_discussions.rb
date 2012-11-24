class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :title
      t.text :post
      t.referenes :user

      t.timestamps
    end
    add_index :discussions, :user_id
  end
end
