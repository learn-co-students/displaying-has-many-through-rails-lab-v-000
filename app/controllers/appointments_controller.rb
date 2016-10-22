class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
    #@appointment.doctor_build
    #@appointment.patient_build
  end
  
  def index 
    raise ActionController::RoutingError, 'This list is not viewable' 
  end

  def show
    @appointment = Appointment.find(params[:id])

  end

  def create
   @appointment = Appointment.create(appointment_params)
    redirect_to @appointment
  end

  private

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :doctor, :patient)
  end
end
