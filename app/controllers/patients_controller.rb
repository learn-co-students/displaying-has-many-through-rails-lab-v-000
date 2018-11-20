class PatientsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
  end

end
