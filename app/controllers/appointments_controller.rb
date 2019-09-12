class AppointmentsController < ApplicationController
  def show
    set_appointment
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointment_params)
    redirect_to appointments_path(@appointment)
  end

  # def edit
  #
  # end
  #
  # def destroy
  #
  # end

  private

    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)
    end
end
