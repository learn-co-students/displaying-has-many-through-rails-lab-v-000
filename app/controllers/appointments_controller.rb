class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show]

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end
end
