class AppointmentsController < ApplicationController
  def show
    @app = Appointment.find(params[:id])
  end
end
