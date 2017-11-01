class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      
      t.string   	    :name, index: true
      t.string        :state
      t.string		    :city
      t.string 		    :zip
      t.string		    :sector
      t.string		    :SIC
      t.string		    :NAICS
      t.boolean		    :franchise, default:false
      t.string		    :model
      t.boolean		    :startup, default:false
      t.string		    :registered
      t.text			    :plan
      t.string		    :loan, default:0
      t.string		    :legal_council
      t.string		    :accounting

      t.references    :user, index:true, foreign_key: true

      t.timestamps
    end
  end
end
