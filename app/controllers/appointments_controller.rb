class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
  end

  def index
    raise ActionController::RoutingError, 'Not Found'
  end
end
