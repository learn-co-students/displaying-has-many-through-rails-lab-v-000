class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    set_patient
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :age)
  end
end
