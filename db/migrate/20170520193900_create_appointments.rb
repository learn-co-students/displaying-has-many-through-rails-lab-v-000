class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.integer :patient_id
      t.integer :doctor_id
    end
  end
end
