class ChangeAppointmentDatetimeDatatypeInAppointments < ActiveRecord::Migration
  def up
    change_column :appointments, :appointment_datetime, :datetime
  end

  def down
    change_column :appointments, :appointment_datetime, :string
  end
end
