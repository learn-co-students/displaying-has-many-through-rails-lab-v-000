class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
  end
  
  def index
    @appointments = Appointment.all
  end
  
  def new
    @appointment = Appointment.new
    @appointment.doctor.build
    @appointment.patient.build
  end

  def create
    appointment = Appointment.create(appointment_params)
    redirect_to appointment
  end

  private

    def appointment_params
      params.require(:appointment).permit(:appointment_datetime, doctor_attributes: [:name, :department], patient_attributes: [:name, :age])
    end

end
