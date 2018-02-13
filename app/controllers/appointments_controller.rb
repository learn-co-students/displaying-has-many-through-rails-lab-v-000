class AppointmentsController < ApplicationController

    def show
      @appointment = Appointment.find(params[:id])
    end

    def new
      @appointment = Appointment.new
    end

    def create
      @appointment = Appointment.new(appointment_params)
      @appointment.save
      redirect_to @appointment
    end
  end

  private

  def appointment_params
       params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)
  end
