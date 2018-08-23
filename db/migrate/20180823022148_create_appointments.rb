class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor
      t.belongs_to :patient
      t.string     :department
      
      t.datetime :appointment_datetime
    end
  end
end
