
class AppointmentsController < ApplicationController
  before_action :find_patient, only: [:show]
  
  def show 
  end
  
  private 
  
  def find_patient
    @patient = Patient.find(params[:id])
  end
end
