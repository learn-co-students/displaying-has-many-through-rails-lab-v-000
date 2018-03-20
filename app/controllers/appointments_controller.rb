class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
  end

  def index
    raise ActionController::RoutingError.new("Item not found")
  end

end
