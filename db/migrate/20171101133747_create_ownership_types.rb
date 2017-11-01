class CreateOwnershipTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :ownership_types do |t|
      t.string 			:name
      t.references  	:business, index:true, foreign_key: true

      t.timestamps
    end
  end
end
