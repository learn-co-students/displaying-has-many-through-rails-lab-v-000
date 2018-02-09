class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find_by_id(params[:id])
  end
end
