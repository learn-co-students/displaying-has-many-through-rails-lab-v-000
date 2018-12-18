class PatientsController < ApplicationController
  def index
    @patient = Patient.all
  end

  def new
    @patient = Patient.new
    @patient.appointments.build
  end

  def create
    @patient = Patient.create(patient_params)

    redirect_to patient_path(@patient)
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def update
  end

  private
    def patient_params
      params.require(:patient).permit(:name, :age, appointment_id, appointments_attributes: [:appointment_datetime])
    end

end
