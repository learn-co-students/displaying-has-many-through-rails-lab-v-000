class RenameAppointmentDatetimeToAppointmentDatetime < ActiveRecord::Migration[5.0]
  def change
    rename_column :appointments, :datetime, :appointment_datetime
  end
end
