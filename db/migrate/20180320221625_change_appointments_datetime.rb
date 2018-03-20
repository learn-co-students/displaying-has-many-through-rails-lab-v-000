class ChangeAppointmentsDatetime < ActiveRecord::Migration
  def change
    rename_column :appointments, :appointment, :appointment_datetime
  end
end
