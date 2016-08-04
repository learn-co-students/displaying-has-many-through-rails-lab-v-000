class AppointmentsController < ApplicationController
  before_action :set_appointment, only: :show

  # GET /appointments
  # GET /appointments.json


  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:appointment_datetime, :patient_name, :doctor_name)
    end
end
