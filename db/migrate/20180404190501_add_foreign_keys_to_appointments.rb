class AddForeignKeysToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :doctor_id, :integer
    add_column :appointments, :patient_id, :integer
  end
end
