class AppointmentsController < ApplicationController
  def show
    # binding.pry
    @appointment = Appointment.find(params[:id])
  end
end
