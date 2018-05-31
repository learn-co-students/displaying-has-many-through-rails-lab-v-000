class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    @patient = patient
    @appointments = @patient.appointments
  end

  def patient
    Patient.find(params[:id])
  end
end
