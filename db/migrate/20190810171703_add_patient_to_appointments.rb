class AddPatientToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_reference :appointments, :patient, foreign_key: true
  end
end
