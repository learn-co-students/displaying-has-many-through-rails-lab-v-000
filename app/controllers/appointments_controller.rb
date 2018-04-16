class AppointmentsController < ApplicationController
  

  def show 
    @appointment = Appointment.find(params[:id])
    @patient = @appointment.patient 
    @doctor = @appointment.doctor
  end
end
