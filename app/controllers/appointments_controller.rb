class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def show
    set_appointment
  end

  def create
    @appointment = Appointment.new

    if @appointment.save
      redirect_to @appointment
    else
      render :new
    end
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime,:doctor_id,:patient_id)
  end
end
