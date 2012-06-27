class Rename < ActiveRecord::Migration
  def change
      rename_column :notes, :type, :meeting_type
  end
end

