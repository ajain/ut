class DeleteFirmColumnFromDocuments < ActiveRecord::Migration
  def change
    remove_column :documents, :firm
  end
end

