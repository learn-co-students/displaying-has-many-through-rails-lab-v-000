class AppointmentsController < ActionController::Base
  def index 
    raise ActionController::RoutingError, 'Not Found'
  end

  def show 
    @appointment = Appointment.find(params[:id])
  end

  # def index
  #   @appointments = Appointment.all 
  # end

  # def new 
  #   @appointment = Appointment.new
  # end

  # def create 
  #   appointment = Appointment.create(appointment_params)
  #   redirect_to appointment_path(appointment)
  # end

  # def appointment_params
  #   params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)
  # end
  
end