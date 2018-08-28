class ChangeAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :patient_id, :integer
    add_column :appointments, :doctor_id, :integer
    remove_column :appointments, :appoinadsfasdfasfdadsfasddsfbdfkbmdsm
    add_column :appointments, :appointment_datetime, :datetime
  end
end
