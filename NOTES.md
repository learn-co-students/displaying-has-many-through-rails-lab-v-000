3 tables
  - doctor
    has_many :patients, through: :appointments
    has_many :appointments

    name, department

  - patient
    has_many :appointments
    has_many :doctors, through: :patients

    name, age


  - appointments
    belongs_to :doctor
    belongs_to :patient

    appointment_datetime, doctor_id, patient_id
    appointment_datetime.strftime("%B %d, %Y at %H:%M")
