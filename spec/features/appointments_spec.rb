describe "appointments", type:  :feature do
  before do
    Doctor.create([
      {name: "Meredith Grey", department: "Internal Medicine"},
      {name: "Hawkeye Pierce", department: "Surgery"},
      {name: "Leonard 'Bones' McCoy", department: "Internal Medicine"},
      {name: "Phillip Chandler", department: "Internal Medicine"},
      {name: "Michaela Quinn", department: "Internal Medicine"}
    ])

    Patient.create([
      {name: "Homer Simpson", age:38},
      {name: "Bart Simpson", age:10},
      {name: "Marge Simpson", age:36},
      {name: "Lisa Simpson", age:8},
      {name: "Maggie Simpson", age:1},
    ])

    Appointment.create([
      {appointment_datetime: DateTime.new(2016, 03, 15, 18, 00, 0), patient_id: 1, doctor_id: 2},
      {appointment_datetime: DateTime.new(2016, 01, 11, 20, 20, 0), patient_id: 2, doctor_id: 1},
      {appointment_datetime: DateTime.new(2016, 04, 22, 14, 00, 0), patient_id: 3, doctor_id:5 },
      {appointment_datetime: DateTime.new(2017, 10, 30, 15, 00, 0), patient_id: 4, doctor_id:4 },
      {appointment_datetime: DateTime.new(2016, 07, 11, 16, 00, 0), patient_id: 5, doctor_id: 3},
      {appointment_datetime: DateTime.new(2016, 05, 31, 17, 00, 0), patient_id: 1, doctor_id: 2},
      {appointment_datetime: DateTime.new(2017, 06, 03, 10, 00, 0), patient_id: 3, doctor_id: 1}
      ])

      @meredith = Doctor.first
      @bart = Patient.find(2)
  end


end
