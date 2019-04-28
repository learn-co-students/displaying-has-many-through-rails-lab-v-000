class PatientsController < ApplicationController
  before_action :find_patient [:show, :edit, :update, :destroy]
  
  def index
    @patients = Patient.all
  end

  def show

  end

  private
    def patient_params
      params.require(:patient).permit(:name, :age)
    end

    def find_patient
      @patient = Patient.find([:id])
    end
end