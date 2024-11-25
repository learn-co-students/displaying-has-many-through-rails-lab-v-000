class RemoveAppointmentDateimteFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :appointment_dateimte, :datetime
  end
end
