class AppointmentsController < ApplicationController

  # def index
  #   @appointments = Appointment.all
  # end

  def new
    @appointment = Appointment.new
  end

  def create
    binding.pry
    @appointment = Appointment.create(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def show
    set_appointment
    @datetime = @appointment.appointment_datetime.strftime("%B %d, %Y at %k:%M")
    @patient = @appointment.patient
    @doctor = @appointment.doctor
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(
      "appointment_datetime(1i)",
 "appointment_datetime(2i)",
 "appointment_datetime(3i)",
 "appointment_datetime(4i)",
 "appointment_datetime(5i)",
 "doctor_id",
 "patient_id"
    )
  end


end
