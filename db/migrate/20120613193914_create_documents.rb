class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :filename
      t.string :type
      t.string :firm
      t.string :fund
      t.string :month
      t.integer :year
      t.string :group
      t.string :investmentcat
      t.string :url

      t.timestamps
    end
  end
end
