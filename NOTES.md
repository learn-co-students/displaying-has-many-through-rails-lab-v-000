Create migrations and models for doctor, patient, and appointment.
Because this is for a hospital, a doctor can have many patients,
but a patient also has many doctors.
Patients and doctors both have many appointments.
Our appointments table should have a column called appointment_datetime
to represent the date and time the appointment will take place.


### doctor
meredith = Doctor.create({name: "Meredith Grey", department: "Internal Medicine"})


has_many :appointments
has_many :patients, through: :appointments

class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :department
      t.timestamps null: false
    end
  end
end

### patient
homer = Patient.create({name: "Homer Simpson", age: 38})

has_many :appointments
has_many :doctors, through: :appointments

class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :title
      t.string :content
      t.timestamps null: false
    end
  end
end

### appointments
{appointment_datetime: DateTime.new(2016, 03, 15, 18, 00, 0), patient: homer, doctor: hawkeye},

belongs_to :doctor
belongs_to :patient


class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :content
      t.belongs_to :user
      t.belongs_to :post
      t.timestamps null: false
    end
  end
end
