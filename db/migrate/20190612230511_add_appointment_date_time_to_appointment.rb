class AddAppointmentDateTimeToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :appointment_datetime, :datetime
  end
end
