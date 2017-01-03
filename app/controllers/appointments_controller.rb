class AppointmentsController < ApplicationController


  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.save
  end

  def edit
    @appointment = Appointment.find_by(:id)
  end

  def update
      @appointment = Appointment.find_by(:id)
      @appointment.update
  end

  def show
    @appointment = Appointment.find_by(appointment_params)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime)
  end
end
