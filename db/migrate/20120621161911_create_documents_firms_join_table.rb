class CreateDocumentsFirmsJoinTable < ActiveRecord::Migration
  def change
    create_table :documents_firms, :id => false do |t|
      t.integer :document_id
      t.integer :firm_id
    end
  add_index :documents_firms, [:document_id, :firm_id]
  end
end
