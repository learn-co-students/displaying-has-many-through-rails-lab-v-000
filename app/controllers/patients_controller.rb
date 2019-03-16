class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def new
    end

    def show
        @patient = Patient.find_by(:id => params[:id])
    end

    def create
    end

    def update
    end
    
    def destroy
    end
end
