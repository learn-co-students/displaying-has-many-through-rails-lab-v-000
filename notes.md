rails g resource Doctor name:string department:string --no-test-framework
rails g resource Patient name:string age:integer --no-test-framework
rails g resource Appointment appointment_datetime:datetime patient_id:integer doctor_id:integer --no-test-framework

doctor
has_many :patients, through: :appointments
has_many :appointments


patient
has_many :doctors, through: :appointments
has_many :appointments

appointment
belongs_to :patient
belongs_to :doctor
