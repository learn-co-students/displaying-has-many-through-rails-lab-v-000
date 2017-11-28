class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
  end

  def index
    @patients = Patient.all
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :age, :appointments)
  end

end
