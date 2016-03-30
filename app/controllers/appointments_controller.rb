class AppointmentsController < ApplicationController

  def show
    # @patient = Patient.find([:id])
    # @doctor = Doctor.find([:id])
    @appointment = Appointment.all
  end 

end #ends class
