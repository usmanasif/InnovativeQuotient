class AddMultipleColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :designation, :string
    add_column :users, :phone_number, :integer
    add_column :users, :about_me, :text
    add_column :users, :email_address, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :zip, :integer
  end
end
