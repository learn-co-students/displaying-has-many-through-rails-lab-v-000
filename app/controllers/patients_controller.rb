
class PatientsController < ApplicationController
  before_action :find_patient, only: [:show]
  
  def index
    @patients = Patient.all
  end 
  
  def show 
  end
  
  private 
  
  def find_patient
    @patient = Patient.find(params[:id])
  end
end
