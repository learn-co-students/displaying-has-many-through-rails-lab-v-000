class CreateTableAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :appointment_datetime
      t.belongs_to :doctor
      t.belongs_to :patient
    end
  end
end
