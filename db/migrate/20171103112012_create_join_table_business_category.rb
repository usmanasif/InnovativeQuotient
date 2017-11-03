class CreateJoinTableBusinessCategory < ActiveRecord::Migration[5.0]
  def change
    create_join_table :businesses, :categories do |t|
      # t.index [:business_id, :category_id]
      # t.index [:category_id, :business_id]
    end
  end
end
