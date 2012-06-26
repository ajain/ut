class RemoveDocumentFromFirms < ActiveRecord::Migration
  def up
    remove_column :firms, :document_id
  end

  def down
    add_column :firms, :document_id, :integer
  end
end
