class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to @patient
    else
      render :new
    end
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def edit
    @patient = Patient.find(params[:id])
    @patient = Patient.update(patient_params)
    @patient.save
    redirect_to @patient
  end

  def destroy
    @patient.destroy
  end

  private

    def patient_params
      params.require(:patient).permit(
        :name,
        :age,
        :appointment
      )
    end

end
