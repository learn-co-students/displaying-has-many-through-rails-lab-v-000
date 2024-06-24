class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      redirect_to @appointment
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def edit
    @appointment = Appointment.find(params[:id])
    @appointment = Appointment.update(appointment_params)
    @appointment.save
    redirect_to @appointment
  end

  def destroy
    @appointment.destroy
  end

  private

    def appointment_params
      params.require(:appointment).permit(
        :appointment_datetime,
        :patient_id,
        :doctor_id,
      )
    end

end
