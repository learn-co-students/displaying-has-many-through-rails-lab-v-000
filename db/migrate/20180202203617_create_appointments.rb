class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :DateTime
      t.belongs_to :PatientId, index: true, foreign_key: true
      t.belongs_to :DoctorId, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
