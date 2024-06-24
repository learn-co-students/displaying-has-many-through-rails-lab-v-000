class RemoveAppointmentsFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :appointments, :string
  end
end
