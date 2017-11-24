class AppointmentsController < ApplicationController
  def show # route get '/appointments/:id' is mapped to this #show action (method)
    @appointment = Appointment.find(params[:id])
  end
end
