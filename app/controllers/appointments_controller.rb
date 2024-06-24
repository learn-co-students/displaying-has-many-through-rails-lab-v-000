class AppointmentsController < ApplicationController
  def index
    raise ActionController::RoutingError.new("Not Found")
  end
  def show
    @appt = Appointment.find(params[:id])
  end
end
