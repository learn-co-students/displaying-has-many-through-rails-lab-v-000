class RenameColumnInAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :patient_id
    add_column :appointments, :patient, :string
    remove_column :appointments, :doctor_id
    add_column :appointments, :doctor, :string
  end
end
