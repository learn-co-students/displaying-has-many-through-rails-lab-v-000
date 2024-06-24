class AppointmentsController < ApplicationController
  def show
    @appointments = Appointment.all
  end
end
