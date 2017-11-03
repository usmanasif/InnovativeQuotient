class RemoveMultipleColumnsFromBusinesses < ActiveRecord::Migration[5.0]
  def change
    remove_column :businesses, :state
    remove_column :businesses, :city
    remove_column :businesses, :zip
  end
end
