class DropFirmTable < ActiveRecord::Migration
  def down
    drop_table :firms
  end
end
