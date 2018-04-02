class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.belongs_to :doctor
      t.belongs_to :patient

      t.timestamps null: false
    end
  end
end
