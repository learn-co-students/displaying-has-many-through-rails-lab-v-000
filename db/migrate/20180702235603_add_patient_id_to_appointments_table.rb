class AddPatientIdToAppointmentTable < ActiveRecord::Migration
  def change
    add_column :appointments, :patient_id, :string
  end
end
