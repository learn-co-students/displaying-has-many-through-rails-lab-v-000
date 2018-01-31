class AddDoctorToAppointments < ActiveRecord::Migration
  def change
    add_reference :appointments, :doctor, index: true, foreign_key: true
  end
end
