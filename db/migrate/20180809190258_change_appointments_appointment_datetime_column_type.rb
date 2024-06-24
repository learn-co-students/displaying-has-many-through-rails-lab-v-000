class ChangeAppointmentsAppointmentDatetimeColumnType < ActiveRecord::Migration
  def change
    change_column :appointments, :appointment_datetime, :date
  end
end
