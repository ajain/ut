class RemoveRedundantForeignKeys < ActiveRecord::Migration
  def down
    change_table :documents do |t|
      t.references :firm
    end
    change_table :firms do |t|
      t.references :document
      add_index :firms, :document_id
    end
  end
end


