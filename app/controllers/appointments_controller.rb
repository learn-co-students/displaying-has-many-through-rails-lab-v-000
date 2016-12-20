class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
  end

  def index
      not_found
  end


  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

  def appointment_params
    params.require(:appointment).permit(:id)
  end

end
