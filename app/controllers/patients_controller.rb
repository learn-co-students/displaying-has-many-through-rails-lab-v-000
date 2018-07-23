class PatientsController < ApplicationController
    def show 
        find
    end

    def index 
        @patients = Patient.all
    end

    private 

    def find 
        @patient = Patient.find(params[:id])
    end
end
