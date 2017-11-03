class CreateBusinessClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :business_classes do |t|
      t.integer :name
      t.string :state
      t.string :city
      t.integer :zip
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
