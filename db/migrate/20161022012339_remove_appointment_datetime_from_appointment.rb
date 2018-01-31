class RemoveAppointmentDatetimeFromAppointment < ActiveRecord::Migration
  def change
    remove_column :appointments, :appointment_datetime, :string
  end
end
