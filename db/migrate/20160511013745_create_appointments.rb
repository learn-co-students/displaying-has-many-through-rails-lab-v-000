class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
			t.datetime :appointment_datetime
			t.integer :doctor_id
			t.integer :patiend_id
			t.timestamps
    end
  end
end
