class AppointmentsController < ApplicationController
  def index
    raise ActionController::RoutingError.new("No appointments index")
  end

  def show
    @appointment = Appointment.find(params[:id])
  end
end
