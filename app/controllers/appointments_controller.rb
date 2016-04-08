class AppointmentsController < ApplicationController
  def index
    raise ActionController::RoutingError.new('Page not found')
  end

  def show
    @appointment = Appointment.find(params[:id])
  end
end
