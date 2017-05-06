class AppointmentsController < ApplicationController

  def show
    @appt = Appointment.find_by(id: params[:id])
  end

end
