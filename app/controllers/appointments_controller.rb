class AppointmentsController < ApplicationController
  before_action :appointments, only: [:show]

   # this is our index page - its taking all appointments
  def show
  end



  private

  def appointment_params
    params.require(:appointment).permit(:patient_id, :doctor_id, :appointment_datetime)
  end

  def appointments
    @appointments = Appointment.all
  end


end
