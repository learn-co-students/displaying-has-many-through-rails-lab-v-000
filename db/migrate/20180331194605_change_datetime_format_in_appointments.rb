class ChangeDatetimeFormatInAppointments < ActiveRecord::Migration
  def change
    change_column :appointments, :appointment_datetime, :datetime
  end
end
