class Appointment < ActiveRecord::Base
  #attr_reader :doctor, :patient
  belongs_to :doctor
  belongs_to :patient

  def doctor=(name)
    @doctor = name
    self.doctor_id = name.id
  end
  
  def patient=(name)
    @patient = name
    self.patient_id = name.id
  end
  
  def doctor
    @doctor
  end
  
  def patient
    @patient
  end
  
end
