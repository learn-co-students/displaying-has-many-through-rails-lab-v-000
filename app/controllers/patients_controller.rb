class PatientsController < ApplicationController

  before_action :set_patient, only: [:show]

  def index
    @patients=Patient.all
  end

  def show
  end

private
  def set_patient
    @patient = Patient.find_by_id(params[:id])
  end

  def patients_params
    params.require(:patient).permit(:name, :age)
  end

end
