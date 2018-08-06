class AppointmentsController < ApplicationController

  def index
    raise ActionController::RoutingError.new("Not Found")
  end

  def show
    @appointment = Appointment.find(params[:id])
  end


end
