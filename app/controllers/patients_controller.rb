class PatientsController < ApplicationController
	before_action :load_patient, only: [:show]

  def index
    @patients = Patient.all
  end

  def show
    @appointments = @patient.appointments
  end

  private

  def patient_params
    params.require(:patient).permit(:name)
  end

  def load_patient
    @patient = Patient.find(params[:id])
  end
end
