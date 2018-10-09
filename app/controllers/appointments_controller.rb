class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show]
  def new

  end

  def create

  end
  
  def show

  end

  def index

  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  # def appointment_params
  #   params.require(:appointment).permit()
  # end
end
