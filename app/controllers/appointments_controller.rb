class AppointmentsController < ApplicationController

  def index
  end


  def show
    @appointment = Appointment.find(params[:id])
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

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])

    @appointment.update(appointment_params)

    if @appointment.save
      redirect_to @appointment
    else
      render :edit
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    flash[:notice] = "Appointment cancelled."
    redirect_to appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :doctor_name, :patient_name)
  end
end
