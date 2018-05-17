class AppointmentsController < ApplicationController
  def show
    # binding.pry
    @appointment = Appointment.find(params[:id])
    # binding.pry
  end
end

