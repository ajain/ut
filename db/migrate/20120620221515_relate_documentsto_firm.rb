class RelateDocumentstoFirm < ActiveRecord::Migration
  def change
    change_table :documents do |t|
      t.references :firm
    end
  end
end
