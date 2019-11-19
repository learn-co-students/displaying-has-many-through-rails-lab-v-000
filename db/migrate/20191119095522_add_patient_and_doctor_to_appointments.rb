class AddPatientAndDoctorToAppointments < ActiveRecord::Migration[5.0]
  def change
    change_table :appointments do |t|
      t.integer :patient_id
      t.integer :doctor_id
    end
  end
end
