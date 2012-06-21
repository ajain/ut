class ChangeEmergencyContactToInteger < ActiveRecord::Migration
  def change
    change_column :firms, :emergency_phone, :integer
  end
end
