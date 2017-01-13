class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
  end

  def index
    redirect_to "/401.html"
  end
end
