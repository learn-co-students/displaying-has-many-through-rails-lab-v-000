class PatientsController < ApplicationController
  def show
      @patient = Patient.find(params[:id])
      if @patient.appointments.last.try(:name)
        @patient.appointments.build
      end
    end

    def index
      @patients = Patient.all
    end

    private

    def patient_params
      params.require(:patient).permit(:name, :age)
    end
end
