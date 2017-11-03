class ChangeMultipleColumnsInBusiness < ActiveRecord::Migration[5.0]
  def up
    execute "ALTER TABLE businesses ALTER loan DROP DEFAULT;"
    change_column :businesses, :registered, 'boolean USING CAST(registered AS boolean)'
    change_column :businesses, :loan, 'boolean USING CAST(loan AS boolean)', default:false
    change_column :businesses, :legal_council, 'boolean USING CAST(legal_council AS boolean)'
    change_column :businesses, :plan, 'boolean USING CAST(plan AS boolean)'
    change_column :businesses, :accounting, 'boolean USING CAST(accounting AS boolean)'
  end
  def down
    change_column :businesses, :registered, :string
    change_column :businesses, :loan, :string
    change_column :businesses, :legal_council, :string
    change_column :businesses, :plan, :text
    change_column :businesses, :accounting, :string
  end
end
