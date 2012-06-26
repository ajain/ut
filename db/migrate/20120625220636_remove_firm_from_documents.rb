class RemoveFirmFromDocuments < ActiveRecord::Migration
  def up
    remove_column :documents, :firm_id
      end

  def down
    add_column :documents, :firm_id, :integer
  end
end
