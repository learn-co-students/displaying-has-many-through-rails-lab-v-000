class AppointmentsController < ApplicationController

  def index
    raise ActionController::RoutingError, 'Please move along; Nothing to see here'
  end

  def show
    @appointment = Appointment.find(params[:id])
  end
end
