class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
  end

  def date_time_formatted
    self.appointment_datetime.strftime("%B %d, %G at %R")
  end
end
