class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.belongs_to :doctor,
        :class_name => 'Doctor', :foreign_key => true
      t.belongs_to :patient,
        :class_name => 'Patient', :foreign_key => true
    end
  end
end
