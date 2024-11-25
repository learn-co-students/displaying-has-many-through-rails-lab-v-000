class AppointmentsController < ActionController::Base
  def show
    @appt = Appointment.find(params[:id])
  end
end
