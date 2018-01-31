class RemoveAppointmentFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :appointment, :string
  end
end
