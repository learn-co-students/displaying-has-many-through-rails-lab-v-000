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

  def edit
    @patient = Patient.find_by(:id)
  end

  def update
      @patient = Patient.find_by(:id)
      @patient.update
  end

  def show
    @patient = Patient.find_by(patient_params)
  end

  private

  def patient_params
    params.require(:patient).permit(:name)
  end

end
