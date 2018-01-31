class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
  end

  def index
    raise_error(ActionController::RoutingError)
  end
end
