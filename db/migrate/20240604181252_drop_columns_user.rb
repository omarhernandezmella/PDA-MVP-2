class DropColumnsUser < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :weight
    remove_column :users, :height
    remove_column :users, :lesions
    remove_column :users, :genre
    remove_column :users, :physical_activity
    remove_column :users, :email
    remove_column :users, :password
  end
end
