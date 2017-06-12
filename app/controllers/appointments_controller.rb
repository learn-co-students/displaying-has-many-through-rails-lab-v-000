class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
    render :show
  end
end
