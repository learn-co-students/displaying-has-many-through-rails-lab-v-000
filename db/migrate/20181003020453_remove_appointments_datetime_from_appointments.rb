class RemoveAppointmentsDatetimeFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :appointments_datetime
  end
end
