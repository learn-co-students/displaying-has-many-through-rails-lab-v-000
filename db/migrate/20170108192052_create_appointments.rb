class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.belongs_to :doctor,
        :class_name => 'Doctor', :foreign_key => 'id'
      t.belongs_to :patient,
        :class_name => 'Patient', :foreign_key => 'id'
    end
  end
end
