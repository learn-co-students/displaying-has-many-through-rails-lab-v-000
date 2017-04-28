class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
    # @patient = Patient.find(patient_params)
  end

  # private
  #
  # def patient_params
  #   params.require(:patient).permit(:id, :name, :age)
  # end
end
