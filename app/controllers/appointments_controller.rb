class AppointmentsController < ApplicationController

  def index
    raise_error(ActionController::RoutingError)
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

end
