class CreateFirmsNotesJoinTable < ActiveRecord::Migration
  def change
    create_table :firms_notes, :id => false do |t|
      t.integer :firm_id
      t.integer :note_id
    end
  add_index :firms_notes, [:firm_id, :note_id]
  end

end
