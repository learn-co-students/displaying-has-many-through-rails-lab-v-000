class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def show
        patient_params
    end

    private

    def patient_params
       @patient = Patient.find(params[:id])
    end
end
