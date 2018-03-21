class AppointmentsController < ApplicationController
  def show
   @appointments = Appointment.find(params[:id])
 end
end
