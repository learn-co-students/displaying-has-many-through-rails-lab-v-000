class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  #def doctor
  #Doctor.find_by(self.doctor_id)
  #end
  
  # def doctor=(doctor) 
  # self.doctor_id = doctor.id
  # end

  # def patient
  # Patient.find_by(self.patient_id)
  # end

  # def patient=(patient)
  # self.patient_id = patient.id
  # end



end