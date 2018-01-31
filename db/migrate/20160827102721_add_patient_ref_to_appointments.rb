class AddPatientRefToAppointments < ActiveRecord::Migration
  def change
    add_reference :appointments, :patient, index: true, foreign_key: true
  end
end
