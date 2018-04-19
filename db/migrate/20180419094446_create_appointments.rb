class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor
      t.belongs_to :patient
      t.string :appointment_datetime

      t.timestamps null: false
    end
  end
end
