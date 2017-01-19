doctor
has_many :appointments
has_many :patients, through :appointments

attributes: name:string department:string


patient
has_many :appointments
has_many :doctors, through: :appointments

attributes: name:string age:integer

appointment
belongs_to :doctor
belongs_to :patient

attributes: appointment_datetime:datetime doctor_id:integer patient_id:integer
format must be human readable: "January 12, 2016 at 3:00".



--no-test-framework

