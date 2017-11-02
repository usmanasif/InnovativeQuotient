class AddRefencesToBusinesses < ActiveRecord::Migration[5.0]
  def change

      add_reference    :business, :category, index:true, foreign_key: true
      add_reference    :business, :industry, index:true, foreign_key: true
      add_reference    :business, :ownership_type, index:true, foreign_key: true
      add_reference    :business, :type, index:true, foreign_key: true

  end


end
