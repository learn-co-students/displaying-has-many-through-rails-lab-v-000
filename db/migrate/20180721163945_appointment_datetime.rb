class AppointmentDatetime < ActiveRecord::Migration
  def change
    rename_column :appointments, :appointment_time, :appointment_datetime
  end
end
