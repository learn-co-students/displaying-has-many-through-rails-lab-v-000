describe "patients", type:  :feature do
  before do
    # Doctor.create([
@mg = Doctor.create({name: "Meredith Grey", department: "Internal Medicine"})
@hp = Doctor.create({name: "Hawkeye Pierce", department: "Surgery"})
@lm = Doctor.create({name: "Leonard 'Bones' McCoy", department: "Internal Medicine"})
@pc = Doctor.create({name: "Phillip Chandler", department: "Internal Medicine"})
@mq = Doctor.create({name: "Michaela Quinn", department: "Internal Medicine"})
    # ])

    # Patient.create([
@hs = Patient.create({name: "Homer Simpson", age:38})
@bs = Patient.create({name: "Bart Simpson", age:10})
@ms = Patient.create({name: "Marge Simpson", age:36})
@ls = Patient.create({name: "Lisa Simpson", age:8})
@gs = Patient.create({name: "Maggie Simpson", age:1})
    # ])

    # Appointment.create([
@app1 = Appointment.create({appointment_datetime: DateTime.new(2016, 03, 15, 18, 00, 0), patient_id: 1, doctor_id: 2})
@app2 = Appointment.create({appointment_datetime: DateTime.new(2016, 01, 11, 20, 20, 0), patient_id: 2, doctor_id: 1})
@app3 = Appointment.create({appointment_datetime: DateTime.new(2016, 04, 22, 14, 00, 0), patient_id: 3, doctor_id:5 })
@app4 = Appointment.create({appointment_datetime: DateTime.new(2017, 10, 30, 15, 00, 0), patient_id: 4, doctor_id:4 })
@app5 = Appointment.create({appointment_datetime: DateTime.new(2016, 07, 11, 16, 00, 0), patient_id: 5, doctor_id: 3})
@app6 = Appointment.create({appointment_datetime: DateTime.new(2016, 05, 31, 17, 00, 0), patient_id: 1, doctor_id: 2})
@app7 = Appointment.create({appointment_datetime: DateTime.new(2017, 06, 03, 10, 00, 0), patient_id: 3, doctor_id: 1})
      # ])

      # @meredith = Doctor.first
      # @bart = Patient.find(2)
  end

  describe "#index page" do
    it 'lists all of the patients and the number of appointments they have' do
      visit patients_path
      within("ul") do
        expect(page).to have_content("Name: Marge Simpson Number of Appointments: 2")
        expect(page).to have_content("Name: Bart Simpson Number of Appointments: 1")
      end
    end
  end

  describe "#show page" do
    it "shows all of a patients's appointment times in a human readable format" do
      visit patient_path(@bs)
      expect(page).to have_content("January 11, 2016 at 20:20")
    end

    it "links to the doctors show page by name for the doctor of each appointment" do
      visit patient_path(@bs)
      expect(page).to have_link("Meredith Grey", href: doctor_path(@mg))
    end
  end

end
