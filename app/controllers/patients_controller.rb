class PatientsController < ApplicationController

    def index
        @patients = Patient.all
    end

    def show
        find_patient
    end

    private
    
    def find_patient
        @patient = Patient.find(params[:id])
    end

end
