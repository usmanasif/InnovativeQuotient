class RemoveBusinessRefrenceFromMultipleTables < ActiveRecord::Migration[5.0]
  def change

  	  remove_reference  :categories,	 :business
      remove_reference  :industries,		 :business		 
      remove_reference  :ownership_types, :business
      remove_reference  :types,			 :business
 
  end
end
