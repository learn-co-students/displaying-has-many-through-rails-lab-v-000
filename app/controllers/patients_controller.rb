class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new

  end

  def create
    Patient.create(patient_params)
    redirect_to patients_path
  end

  def show
  end

  private

  def patients_params(*args)
    params.require(:patient).permit(args*)
  end

end
