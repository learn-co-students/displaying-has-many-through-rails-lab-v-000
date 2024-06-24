class PatientsController < ApplicationController
    before_action :get_patient_data, only: [:show]
    before_action :get_patients_data, only: [:index]

    private

    def get_patient_data
        @patient = Patient.where(id: params[:id]).includes(:appointments => :doctor).first
    end
    
    def get_patients_data
        @patients = Patient.all.includes(:appointments)
    end
end
