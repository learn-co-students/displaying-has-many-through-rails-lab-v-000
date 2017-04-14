class RemovePatientIdFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :patient_id, :integer
  end
end
