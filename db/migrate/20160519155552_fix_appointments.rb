class FixAppointments < ActiveRecord::Migration
  def change

    remove_column :appointments, :patient
    remove_column :appointments, :doctor
    add_column :appointments, :doctor_id, :integer
    add_column :appointments, :patient_id, :integer
  end
end
