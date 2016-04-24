-- models --
x 1. Doctor:
x  a. has_many patients
x  b. name
x  c. department
x 2. Patient:
x  a. has_many doctors
x  b. name
x 3. Appointment: (join_table)
x  a. belongs_to patient
x  b. belongs_to doctor
x  c. appointment_datetime (human readable format with datetime)
x  d. patient_id
x  e. doctor_id

-- views --
x 1. doctors/index.html.erb
x  a. displays the doctor's name
x  b. links to their show page
x  c. patient count
x 2. doctors/show.html.erb
x  a. displays the doctor's name
x  b. displays department
x  c. displays each appointment's date, time, patient name
    and a link to that patient's show page.
x 3. patients/show.html.erb
x  a. list each appointment date and time
x  b. links to the doctor's show page
4. patients/index.html.erb
  a. displays a link to each patient's show page
  b. displays the count of the appointment's they have.
x 5. appointments/show.html.erb
x  a. show's the date, time, patient, and doctor for that particular
    appointment.
x 6. No appointment index page.
