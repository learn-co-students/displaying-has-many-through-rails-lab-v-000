class PatientsController < ApplicationController

  def show
    @patent = Patient.find(params[:id])
  end

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def edit
    @Patient = Patient.find(params[:id])
  end

  def create
    @patient.create(patient_params)
    if @patient.save
      redirect_to patient_path(@patient)
    else
      render :new
    end
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to patient_path(@patient)
    else
      render :edit
    end
  end

  def destroy
    Patient.find(params[:id]).destroy
    redirect_to patients_url
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :age)
  end

end
