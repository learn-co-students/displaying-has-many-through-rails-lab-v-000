class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.all
  end
end
