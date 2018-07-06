class UpdateForeignKeyColumnNamesInAppointments < ActiveRecord::Migration 
  def change 
    rename_column :appointments, :patient, :patient_id
    rename_column :appointments, :doctor, :doctor_id
  end 
end 