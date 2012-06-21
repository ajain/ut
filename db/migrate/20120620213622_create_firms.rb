class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|
      t.string :firm_name
      t.string :short_name
      t.string :firm_type
      t.integer :phone
      t.integer :fax
      t.string :emergency_phone
      t.string :website
      t.string :status
      t.references :document

      t.timestamps
    end
    add_index :firms, :document_id
  end
end
