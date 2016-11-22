class PatientsController < ApplicationController
  def new
    @patient = Patient.new
  end

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to patient_path(@patient)
    else
      render :new
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to patient_path(@patient)
    else
      render :edit
    end
  end

  def delete
    Patient.find(params[:id]).destroy
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :age)
  end
end
