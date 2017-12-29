class PatientsController < ApplicationController
    def index 
        @patients = Patient.all
    end 
    
    def show
        # binding.pry
        @patient = Patient.find_by(params[:id])
    end 
end
