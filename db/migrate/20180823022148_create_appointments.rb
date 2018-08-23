class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      # when you do the "t.belongs_to :doctor" in the joins table... IT creates the doctor_id
      # in the schemea altomaticly
      t.belongs_to :doctor
      t.belongs_to :patient
      t.string     :department

      t.datetime :appointment_datetime
    end
  end
end
