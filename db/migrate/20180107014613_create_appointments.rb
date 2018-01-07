class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :appointment_datetime
      t.belongs_to :doctor_id
      t.belongs_to :patient_id

      t.timestamps null: false
    end
  end
end
