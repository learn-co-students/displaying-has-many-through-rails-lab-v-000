class CreateAppointment < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor
      t.belongs_to :patient
      t.datetime :appointment_datetime
    end
  end
end
