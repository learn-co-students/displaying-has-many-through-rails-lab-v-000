class AddRefToAppointments < ActiveRecord::Migration
  def change
    add_reference :appointments, :doctor
    add_reference :appointments, :patient
  end
end
