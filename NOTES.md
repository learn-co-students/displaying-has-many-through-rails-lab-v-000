*** ORM Overview ***

** Migrations **

doctors
  [x] t.string name
  [x] t.string department

patients
  [x] t.string name
  [x] t.integer age

appointments
  [x] t.datetime appointment_datetime
  [x] t.belongs_to :doctor
  [x] t.belongs_to :patient

** Models **

[x] class Doctor
  has_many :patients, through: :appointments
  has_many :appointments

[x] class Patient
  has_many :doctors, through: :appointments
  has_many :appointments

[x] class Appointment
  belongs_to :doctor
  belongs_to :patient

** Views **ra

doctors/index
  - name >> link to doctors/show
  - count of patients

doctors/show
  [x] name
  [x] department
  [x] appointments
    [x] date
    [x] time
    [x] patient name >> link to patients/show

patients/index
  [x] name >> link to patients/show
  [x] count of appointments

patients/show
  [x] appointments
    [x] date
    [x] time
    [x] doctor name >> link to doctors/show

appointments/show
  [x] date
  [x] time
  [x] patient name
  [x] doctor name
