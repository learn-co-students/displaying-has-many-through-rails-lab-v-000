class AppointmentsController < ApplicationController

  def show
    @appo = Appointment.find(params[:id])
  end
end
