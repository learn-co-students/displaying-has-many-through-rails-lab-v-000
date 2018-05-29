class CreatePatientAppointments < ActiveRecord::Migration
  def change
    create_table :patient_appointments do |t|

      t.timestamps null: false
    end
  end
end
