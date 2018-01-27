class PatientsController < ApplicationController
  before_action :set_patient, only: [:show]

  def index
    @patients = Patient.all
  end
  
  
  
  private
  def set_patient
    @patient = Patient.find(params[:id])
  end

end
