class PatientsController < ApplicationController
    def new
      @patient = Patient.new
    end

    def create
    end

    def show
      @patient = Patient.find(params[:id])
    end


    private

    def patient_params
        params.require(:patient).permit(:appointment_datetime, :doctor_id, :patient_id)
    end
  end
