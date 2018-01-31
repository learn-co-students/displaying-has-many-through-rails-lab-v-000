class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.save
  end

  def show
    @patient = Patient.find(params[:id])
  end

  private
    def patient_params
      params.require(:patient).permit(:name, :age)
    end
end
