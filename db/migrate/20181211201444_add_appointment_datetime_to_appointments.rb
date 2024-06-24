class AddAppointmentDatetimeToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :appointment_datetime, :datetime
  end
end
