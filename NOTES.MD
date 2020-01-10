Doctor
    has_many :appointments
    has_many :patients, through :appointments

    :name
    :department

Patient
    has_many :appointments
    has_many :doctors, through :appointments

    :name
    :age

Appointment
    belongs_to :doctor
    belongs_to :patient

    appointment_datetime -->  "January 12, 2016 at 3:00"
    patient_id
    doctor_id
