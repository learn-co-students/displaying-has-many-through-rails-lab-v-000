class PatientsController < ApplicationController
    def index 
        @patients = Patient.all 
    end 

    def show 
        @patient = Patient.all.find(params[:id])
    end 
    
    
end
