class AppointmentsController < ApplicationController

  def index
    not_found
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private

    def not_found
      raise ActionController::RoutingError.new('Not Found')
    end

end
