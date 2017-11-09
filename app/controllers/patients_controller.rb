class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    set_patient
    @appointments = @patient.appointments
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end


end
