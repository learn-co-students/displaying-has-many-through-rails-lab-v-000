class PatientsController < ApplicationController
  before_action :set_patient!, only: [:edit, :show, :update, :destroy]

  def index
    @patients = Patient.all
  end

  def create
    @patient = Patient.create(patient_params)
    redirect_to patient_path(@patient)
  end

  def new
    @patient = Patient.new
  end

  def edit
  end

  def show
  end

  def update
    @patient.update(patient_params)
    redirect_to patient_path(@patient)
  end

  def destroy
    @patient.destroy
    redirect_to patient_path
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :age)
  end

  def set_patient!
    @patient = Patient.find(params[:id])
  end
end
