class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.belongs_to :doctor
      t.belongs_to :patient

      t.timestamps
    end
  end
end
