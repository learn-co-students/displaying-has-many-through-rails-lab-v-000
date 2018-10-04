class ChangeColumnDatetimeInAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :appointment_datetime, :datetime
    remove_column :appointments, :datetime
  end
end
