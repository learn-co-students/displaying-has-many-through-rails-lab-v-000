class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[appointment_params])

  end

  private

  def appointment_params
    params.require(:appointment).permit{(:doctor_id, :patient_id, :appointment_datetime)

  end

end
