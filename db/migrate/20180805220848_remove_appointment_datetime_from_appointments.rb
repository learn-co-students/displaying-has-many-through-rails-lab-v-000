class RemoveAppointmentDatetimeFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :appointment_datetime, :integer
  end
end
