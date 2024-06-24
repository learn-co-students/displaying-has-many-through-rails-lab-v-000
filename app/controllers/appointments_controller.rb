class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end


  def show
    @appointments = Appointment.all
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = appointment.new
  end


    def create
      @appointment = Appointment.new(appointment_params)

      if @appointment.save
        redirect_to @appointment
      else
        render :new
      end
    end

    private

    def appointment_params
      params.require(:appointment).permit(:appointment_datetime, :doctor_id, :patient_id)
    end

end
