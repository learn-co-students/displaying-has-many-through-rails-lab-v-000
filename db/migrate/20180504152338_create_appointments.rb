class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.integer :patient_id
      t.string :patient 
      t.integer :doctor_id
      t.string :doctor

      t.timestamps null: false
    end
  end
end
