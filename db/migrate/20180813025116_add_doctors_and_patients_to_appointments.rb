class AddDoctorsAndPatientsToAppointments < ActiveRecord::Migration
  def change
    add_reference :appointments, :patient, index: true, foreign_key: true
    add_reference :appointments, :doctor, index: true, foreign_key: true
  end
end
