class AppointmentsController < ApplicationController

  def index
    raise ActionController::RoutingError.new('not found')
    render :error
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def error
  end
end
