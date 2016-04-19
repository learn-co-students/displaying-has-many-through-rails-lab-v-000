class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
  end

  def index
    #raise error from private method if attempt index route "/appointments"
    not_found
  end

  private
    def not_found
      raise ActionController::RoutingError.new('There is no index of all appointments.')
    end

end
