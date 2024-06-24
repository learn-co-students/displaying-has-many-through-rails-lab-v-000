class AppointmentsController < ApplicationController
  
  #No index, no need to list all appointments
  
  def show
    set_appointment
  end
  
  private
  
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
  
  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :doctor, :patient)
  end
end
