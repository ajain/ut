class RenameDocType < ActiveRecord::Migration
  def change
      rename_column :documents, :doctype, :documenttype
  end
end
