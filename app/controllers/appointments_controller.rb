class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find_by(doctor_id: params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
  end

  def delete
  end

end