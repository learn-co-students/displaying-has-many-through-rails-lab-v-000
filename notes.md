doctor
    name - string
    department - string
  many patients
  many appointments
patient
    name - string
    age - integer
  many doctors
  many appointments
appointment
    appointment_datetime - January 12, 2016 at 3:00 - using `.strftime("%B %d, %Y at %I:%M")`
  belongs to doctor
  belongs to patient
