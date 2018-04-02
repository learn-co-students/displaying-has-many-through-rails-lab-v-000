class DropAppointmentDateAndAddAppointmentDatetimeToAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :appointment_date
    add_column :appointments, :appointment_datetime, :datetime
  end
end
