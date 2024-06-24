class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def edit
    @appointment
  end

  def update
  end

  def destroy
  end
end
