class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t|

      t.string  	    :name, index:true
      t.references  	:business, index:true, foreign_key: true

      t.timestamps
    end
  end
end
