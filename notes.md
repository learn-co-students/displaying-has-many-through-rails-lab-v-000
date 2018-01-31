
$ bin/rails generate model Doctors appointment_datetime:date description:text
$ bin/rails generate model Patients name:string age:integer
$ bin/rails generate model Appointments


class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointements do |t|
      t.date :appointment_datetime
      t.belongs_to :patient
      t.belongs_to :doctor
      t.timestamps null: false
    end
  end
end
