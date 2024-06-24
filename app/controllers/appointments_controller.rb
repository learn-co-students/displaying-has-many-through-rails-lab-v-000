class AppointmentsController < ApplicationController

  def show 
    @appointment = Appointment.find(params[:id])
  end

  def self.date_time
    appontment_datetime.strftime("%B %d, %Y")
  end

end
