class AppointmentsController < ApplicationController
  before_action :find_appointment [:show, :edit, :update, :destroy]

  def show

  end

  private
    def appointment_params
      params.require(:appointment).permit(:name, :age)
    end

    def find_appointment
      @appointment = Appointment.find([:id])
    end
end