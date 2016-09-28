class AppointmentsController < ApplicationController

  def index
    raise ActionController::RoutingError, 'Not Found'
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

end
