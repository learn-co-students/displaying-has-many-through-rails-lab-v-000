class PatientsController < ApplicationController
  def new
  end

  def show
  end

  def index
    @patients = Patient.all
    @appointments = Appointment.all
  end
end
