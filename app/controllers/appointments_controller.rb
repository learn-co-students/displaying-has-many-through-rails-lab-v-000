class AppointmentsController < ApplicationController 
  before_action :set_appointment
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
end
