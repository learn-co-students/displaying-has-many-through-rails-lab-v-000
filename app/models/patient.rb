class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def self.number_of_appointments
    @patient = Patient.find(params[:id])
    @patient_appointment_count = @patient.appointments.count
  end

end
