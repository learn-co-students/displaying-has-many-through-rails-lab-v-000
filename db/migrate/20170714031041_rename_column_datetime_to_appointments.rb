class RenameColumnDatetimeToAppointments < ActiveRecord::Migration
  def change
    rename_column :appointments, :datetime, :appointment_datetime
  end
end
