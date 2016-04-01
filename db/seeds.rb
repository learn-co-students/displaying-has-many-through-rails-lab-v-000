# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

mg = Doctor.create({name: "Meredith Grey", department: "Internal Medicine"})
hp = Doctor.create({name: "Hawkeye Pierce", department: "Surgery"})
lm = Doctor.create({name: "Leonard 'Bones' McCoy", department: "Internal Medicine"})
pc = Doctor.create({name: "Phillip Chandler", department: "Internal Medicine"})
mq = Doctor.create({name: "Michaela Quinn", department: "Internal Medicine"})

hs = Patient.create({name: "Homer Simpson", age:38})
bs = Patient.create({name: "Bart Simpson", age:10})
ms = Patient.create({name: "Marge Simpson", age:36})
ls = Patient.create({name: "Lisa Simpson", age:8})
gs = Patient.create({name: "Maggie Simpson", age:1})

app1 = Appointment.create({appointment_datetime: DateTime.new(2016, 03, 15, 18, 00, 0), patient_id: hs.id, doctor_id: mg.id})
app2 = Appointment.create({appointment_datetime: DateTime.new(2016, 01, 11, 20, 20, 0), patient_id: bs.id, doctor_id: hp.id})
app3 = Appointment.create({appointment_datetime: DateTime.new(2016, 04, 22, 14, 00, 0), patient_id: ls.id, doctor_id: hp.id})
app4 = Appointment.create({appointment_datetime: DateTime.new(2017, 10, 30, 15, 00, 0), patient_id: ls.id, doctor_id: pc.id})
app5 = Appointment.create({appointment_datetime: DateTime.new(2016, 07, 11, 16, 00, 0), patient_id: hs.id, doctor_id: mq.id})
app6 = Appointment.create({appointment_datetime: DateTime.new(2016, 05, 31, 17, 00, 0), patient_id: gs.id, doctor_id: lm.id})
app7 = Appointment.create({appointment_datetime: DateTime.new(2017, 06, 03, 10, 00, 0), patient_id: ms.id, doctor_id: lm.id})
