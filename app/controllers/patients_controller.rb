class PatientsController < ApplicationController
  def show
    set_patient
  end

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create(patient_params)
    redirect_to patient_path(@patient)
  end

  # def edit
  #
  # end
  #
  # def destroy
  #
  # end

  private

    def set_patient
      @patient = Patient.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:name, :age, appointment_attributes: [:appointment_datetime])
    end
end
