class AddPatientIdToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :patient_id, :integer
  end
end
