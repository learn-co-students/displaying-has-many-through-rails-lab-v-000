class RemoveAppointmentDatetimeFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :appointment_datetime, :string
    add_column :appointments, :appointment_datetime, :datetime 
  end
end
