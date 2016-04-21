class AppointmentsController < ApplicationController
  def index
    @appointment = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appoint_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private

  def appoint_params
    params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)
  end
end
