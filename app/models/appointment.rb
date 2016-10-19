class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor


  def get_doctor
    Doctor.find(self.doctor_id).name 
  end

  def get_patient
    Patient.find(self.patient_id).name
  end

  def formatted_appt
    "#{self.appointment_datetime.to_formatted_s(:long)[0..-7]} at #{self.appointment_datetime.to_formatted_s(:long)[-5..-1]} "
  end
end


