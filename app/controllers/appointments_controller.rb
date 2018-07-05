class AppointmentsController < ApplicationController

  def show
    @appt = Appointment.find(params[:id])
  end

  def index
    redirect_to patients_path
  end

end
