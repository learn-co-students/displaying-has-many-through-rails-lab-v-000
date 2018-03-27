class AppointmentsController < ApplicationController

  def index
    raise ActionController::RoutingError.new('Not Found')
  end

  def show
    @appointments = Appointment.all
  end
end
